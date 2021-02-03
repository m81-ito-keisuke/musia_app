require 'rails_helper'

RSpec.describe 'ツイート投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @music_text = Faker::Lorem.sentence
    @music_image = Faker::Lorem.sentence
  end
  context 'ツイート投稿ができるとき' do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      sign_in(@user)
      # 新規投稿ページへのリンクがある
      expect(page).to have_content('投稿する')
      # 投稿ページに移動する
      visit new_music_path
      # フォームに情報を入力する
      fill_in 'music_image', with: @music_image
      fill_in 'music_text', with: @music_text
      # 送信するとmusicモデルのカウントが1上がる
      expect  do
        find('input[name="commit"]').click
      end.to change { music.count }.by(1)
      # 投稿完了ページに遷移する
      expect(current_path).to eq musics_path
      # 「投稿が完了しました」の文字がある
      expect(page).to have_content('投稿が完了しました。')
      # トップページに遷移する
      visit root_path
      # トップページには先ほど投稿した内容のツイートが存在する（画像）
      expect(page).to have_selector ".content_post[style='background-image: url(#{@music_image});']"
      # トップページには先ほど投稿した内容のツイートが存在する（テキスト）
      expect(page).to have_content(@music_text)
    end
  end
  context 'ツイート投稿ができないとき' do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのリンクがない
      expect(page).to have_no_content('投稿する')
    end
  end
end

RSpec.describe 'ツイート編集', type: :system do
  before do
    @music1 = FactoryBot.create(:music)
    @music2 = FactoryBot.create(:music)
  end
  context 'ツイート編集ができるとき' do
    it 'ログインしたユーザーは自分が投稿したツイートの編集ができる' do
      # ツイート1を投稿したユーザーでログインする
      sign_in(@music1.user)
      # ツイート1に「編集」ボタンがある
      expect(
        all('.more')[1].hover
      ).to have_link '編集', href: edit_music_path(@music1)
      # 編集ページへ遷移する
      visit edit_music_path(@music1)
      # すでに投稿済みの内容がフォームに入っている
      expect(
        find('#music_image').value
      ).to eq @music1.image
      expect(
        find('#music_text').value
      ).to eq @music1.text
      # 投稿内容を編集する
      fill_in 'music_image', with: "#{@music1.image}+編集した画像URL"
      fill_in 'music_text', with: "#{@music1.text}+編集したテキスト"
      # 編集してもmusicモデルのカウントは変わらない
      expect  do
        find('input[name="commit"]').click
      end.to change { music.count }.by(0)
      # 編集完了画面に遷移する
      expect(current_path).to eq music_path(@music1)
      # 「更新が完了しました」の文字がある
      expect(page).to have_content('更新が完了しました。')
      # トップページに遷移する
      visit root_path
      # トップページには先ほど変更した内容のツイートが存在する（画像）
      expect(page).to have_selector ".content_post[style='background-image: url(#{@music1.image}+編集した画像URL);']"
      # トップページには先ほど変更した内容のツイートが存在する（テキスト）
      expect(page).to have_content("#{@music1.text}+編集したテキスト")
    end
  end
  context 'ツイート編集ができないとき' do
    it 'ログインしたユーザーは自分以外が投稿したツイートの編集画面には遷移できない' do
      # ツイート1を投稿したユーザーでログインする
      sign_in(@music1.user)
      # ツイート2に「編集」ボタンがない
      expect(
        all('.more')[0].hover
      ).to have_no_link '編集', href: edit_music_path(@music2)
    end
    it 'ログインしていないとツイートの編集画面には遷移できない' do
      # トップページにいる
      visit root_path
      # ツイート1に「編集」ボタンがない
      expect(
        all('.more')[1].hover
      ).to have_no_link '編集', href: edit_music_path(@music1)
      # ツイート2に「編集」ボタンがない
      expect(
        all('.more')[0].hover
      ).to have_no_link '編集', href: edit_music_path(@music2)
    end
  end
end

RSpec.describe 'ツイート削除', type: :system do
  before do
    @music1 = FactoryBot.create(:music)
    @music2 = FactoryBot.create(:music)
  end
  context 'ツイート削除ができるとき' do
    it 'ログインしたユーザーは自らが投稿したツイートの削除ができる' do
      # ツイート1を投稿したユーザーでログインする
      sign_in(@music1.user)
      # ツイート1に「削除」ボタンがある
      expect(
        all('.more')[1].hover
      ).to have_link '削除', href: music_path(@music1)
      # 投稿を削除するとレコードの数が1減る
      expect do
        all('.more')[1].hover.find_link('削除', href: music_path(@music1)).click
      end.to change { music.count }.by(-1)
      # 削除完了画面に遷移する
      expect(current_path).to eq music_path(@music1)
      # 「削除が完了しました」の文字がある
      expect(page).to have_content('削除が完了しました。')
      # トップページに遷移する
      visit root_path
      # トップページにはツイート1の内容が存在しない（画像）
      expect(page).to have_no_selector ".content_post[style='background-image: url(#{@music1.image});']"
      # トップページにはツイート1の内容が存在しない（テキスト）
      expect(page).to have_no_content(@music1.text.to_s)
    end
  end
  context 'ツイート削除ができないとき' do
    it 'ログインしたユーザーは自分以外が投稿したツイートの削除ができない' do
      # ツイート1を投稿したユーザーでログインする
      sign_in(@music1.user)
      # ツイート2に「削除」ボタンが無い
      expect(
        all('.more')[0].hover
      ).to have_no_link '削除', href: music_path(@music2)
    end
    it 'ログインしていないとツイートの削除ボタンがない' do
      # トップページに移動する
      visit root_path
      # ツイート1に「削除」ボタンが無い
      expect(
        all('.more')[1].hover
      ).to have_no_link '削除', href: music_path(@music1)
      # ツイート2に「削除」ボタンが無い
      expect(
        all('.more')[0].hover
      ).to have_no_link '削除', href: music_path(@music2)
    end
  end
end

RSpec.describe 'ツイート詳細', type: :system do
  before do
    @music = FactoryBot.create(:music)
  end
  it 'ログインしたユーザーはツイート詳細ページに遷移してコメント投稿欄が表示される' do
    # ログインする
    sign_in(@music.user)
    # ツイートに「詳細」ボタンがある
    expect(
      all('.more')[0].hover
    ).to have_link '詳細', href: music_path(@music)
    # 詳細ページに遷移する
    visit music_path(@music)
    # 詳細ページにツイートの内容が含まれている
    expect(page).to have_selector ".content_post[style='background-image: url(#{@music.image});']"
    expect(page).to have_content(@music.text.to_s)
    # コメント用のフォームが存在する
    expect(page).to have_selector 'form'
  end
  it 'ログインしていない状態でツイート詳細ページに遷移できるもののコメント投稿欄が表示されない' do
    # トップページに移動する
    visit root_path
    # ツイートに「詳細」ボタンがある
    expect(
      all('.more')[0].hover
    ).to have_link '詳細', href: music_path(@music)
    # 詳細ページに遷移する
    visit music_path(@music)
    # 詳細ページにツイートの内容が含まれている
    expect(page).to have_selector ".content_post[style='background-image: url(#{@music.image});']"
    expect(page).to have_content(@music.text.to_s)
    # フォームが存在しないことを確認する
    expect(page).to have_no_selector 'form'
    # 「コメントの投稿には新規登録/ログインが必要です」が表示されていることを確認する
    expect(page).to have_content 'コメントの投稿には新規登録/ログインが必要です'
  end
end
