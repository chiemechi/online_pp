# README
<h1 align="center">オンライン環境サポートアプリ</h1><img width="1014" alt="TOP" src="https://user-images.githubusercontent.com/70624406/97114452-e6547e00-1733-11eb-9040-e83b12e11c8e.png">

コロナウィルスの影響で、お仕事、イベントと、ことあるごとにリモート化に切り替わることが増えました。そこでリモハラという言葉が生まれたりと画面越しの新しいコミニケーションの形にストレスを抱えている人が多いというのが現状です。その現状に対して少しでも楽しくストレスを解消できるものを作りたいと考えでこのアプリを制作しました。

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->

## 機能紹介
<h3 align= "center">-自動ファシリテーション -</h3>


<p align="center">
<img width="500"  src="https://user-images.githubusercontent.com/70624406/97556217-82280780-1a1c-11eb-9f72-ede614e9f31b.gif">


この機能はルーレットで誰が何を話すかを自動で決めてくれます。テンポよく会話ができないストレスを解消。
リモート相手に合わせて質問内容を変えることができます。

<img width="576" alt="スクリーンショット 2020-10-27 2 22 52" src="https://user-images.githubusercontent.com/70624406/97604533-f2508080-1a50-11eb-9040-3849164c589d.png">

また、オンライン呑みの様子を記念写真として記録できるように画像投稿機能を付けました。
</p>
<h3 align= "center">-リモート会議サポート -</h3>

<p align="center">
<img width="747" alt="スクリーンショット 2020-10-26 20 42 22" src="https://user-images.githubusercontent.com/70624406/97604861-4a878280-1a51-11eb-8f91-9313eceb32a5.png">

</p>


誤解や行き違いによるミスコミュニケーションの心配、言いたいことが伝わっているのか、伝わらないというストレスを解消してくれます。仕事の振り分け、会議のアジェンダを可視化。
時間を意識できるようにストップウォッチ、次の会議の日程を決めれるようにスケージュール機能です。

そして最後それを議事録として保存できるようにしたので、後からその１画面を見るだけで会議の内容を見返すことができるようにしたことがポイントです。

## 🌐 App URL
https://onlines-suport.herokuapp.com/
### ****  
　
## 💬 Usage


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
