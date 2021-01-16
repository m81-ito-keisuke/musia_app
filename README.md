## Table名

|Column|Type|Options|
|------|----|-------|
（ここに追記していく）

## users table
has_many :music
has_many :comments
has_many :order

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|

## musics table
belongs_to :user
has_many :comments
has_many :order

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|title|string|null: false|
|detail|text|null: false|
|genre_id|integer|null: false|
|price|integer|null: false|

## comments table
  belongs_to :music
  belongs_to :user

|Column|Type|Options|
|------|----|-------|
|music_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|comment|integer|null: false|

## orders table
belongs_to :user
belongs_to :music
has_one :address

|Column|Type|Options|
|------|----|-------|
|music_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

## addresses table
belongs_to :order

|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|
|phone_number|string|null: false|
|customer_id|integer|null: false, foreign_key: true|

### Association
（ここに追記していく）

＜記載項目＞
・アプリ名
新しい音楽のありか 「musia」

・概要
自ら作った音楽音源（電子CD）の販売
ユーザーが投稿した音楽音源の視聴

・本番環境(デプロイ先テストアカウント＆ID)
デプロイ前

・制作背景(意図)
⇒今、音楽業界は海賊版やサブスクリプション、公式PVなどといった様々な影響で
CDが売れなくなり、CDが売れない時代と言われて数年が経ちました。
実力があるにもかかわらず生計を立てていけず解散してしまうアーティストや
実力のあってもCDが売れていないアーティストや一度一斉を風靡しても一発屋で終わるアーティストなど。
親世代の頃と比べると圧倒的にアーティストの寿命が短いです。
それはインターネットの発達により音楽がビジネスとして成り立たなくなったことが背景にあると思います。
それを解決するのがこのmusiaです。
プロアマ問わず自分の曲を販売したり、無料で聞いてもらったりすることができます。
そしてこのサイトからのみ視聴可能とすることで、プラットフォームの価値を見出し、
再び音楽業界を再起させることができるアプリだと考えております。
理想としては姉妹サイトでMIX師（CDのように音源を加工するエンジニア）やセッションの募集や
バンドメンバーの募集、ボイトレやギター教室など会員が会員に教えるオンラインサービスなど
あらゆる音楽の新しい場所として価値を見出したいと考えております。


・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
未完成

・工夫したポイント
未完成
・使用技術(開発環境)
ruby on rails 

・課題や今後実装したい機能
フォロー機能,お気に入り機能

・DB設計
上記参照
