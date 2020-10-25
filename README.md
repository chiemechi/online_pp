# README
<h1 align="center">オンライン環境サポートアプリ</h1><img width="1014" alt="TOP" src="https://user-images.githubusercontent.com/70624406/97114452-e6547e00-1733-11eb-9040-e83b12e11c8e.png">
- 飲み会、会議やランチ、帰省など、今オンラインで行われるコミュニケーションという新しいコミニケーション形態を
盛り上げてくれるアプリ
Uploading TOP.png…

- ![top_page](https://gyazo.com/cf1866c6e2b63dfc282715d1f1cfe456)
## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->

## 機能紹介
- 新規会員登録・ログインをすると,自動ファシリテーション、スケジュール管理のアプリが使用できます。
-自動ファシリテーション
 

 ## Requirement
- Ruby 2.5.1
- Rails 5.2.3
## Installation
    $ git clone https://github.com/chiemechi/online_pp/blob/master/README.md
    $ cd online_pp
    $ bundle install


## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_meny :cards
- has_meny :lists

## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|list_id|integer|null: false|
|memo|string|null: false|

### Association
- belongs_to :list

## listsテーブル
|Column|Type|Options|
|------|----|-------|
|title_id|references|null: false, foreign_key: true|
|name|string|null: false|

### Association
- belongs_to :user
