module MusicsHelper
  def music_lists(musics)
    html = ''
    @musics.each do |music|
      html += render(partial: 'music', locals: { music: music })
    end
    raw(html)
  end
end
