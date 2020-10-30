# README
<h1 align="center">オンライン環境サポートアプリ</h1><img width="1014" alt="TOP" src="https://user-images.githubusercontent.com/70624406/97114452-e6547e00-1733-11eb-9040-e83b12e11c8e.png">

<h2 align="center">Forte</h3>
<p align="center">
「画面越しのコミニケーションってストレス」
</p>
<p align="center">
そんな人たちに向けたサービスです
</p>


<h2> 🌐 URL </h2>
https://onlines-suport.herokuapp.com/



<h2> 🎲 制作の背景 </h2>
コロナウィルスの影響で、お仕事、イベントと、ことあるごとにリモート化に切り替わることが増えました
それに伴い画面越しの新しいコミニケーションの形にストレスを抱えている人が多いはず・・・
そのような人達に対して少しでも楽しくストレスを解消できるものを作りたいという想いからこのアプリが完成しました。

また、私が前職の営業職でリモート会議をした経験を元に、あったらいいな・・・！
と感じた機能を搭載しています。


<h2> 🎲 機能一覧 </h2>

<h3 align= "center">-自動ファシリテーション -</h3>

<p align="center">
オンライン飲み会、特有の無駄な沈黙。
</p>
<p align="center">
テンポよく会話ができないストレスを解消してくれます。
</p>



<p align="center">
<img width="500"  src="https://user-images.githubusercontent.com/70624406/97556217-82280780-1a1c-11eb-9f72-ede614e9f31b.gif">


この機能はルーレットで誰が何を話すかを自動で決めてくれます。会社の上司、帰省自粛でなかなか会えない家族、イベントなどの初めて会う人・・・リモート相手にあった話題を提供します。

<img width="576" alt="スクリーンショット 2020-10-27 2 22 52" src="https://user-images.githubusercontent.com/70624406/97604533-f2508080-1a50-11eb-9040-3849164c589d.png">

また、オンライン呑みの様子を記念写真として記録できるように画像投稿機能を付けました。
</p>


<h3 align= "center">-リモート会議サポート -</h3>

<p align="center">
<img width="747" alt="スクリーンショット 2020-10-26 20 42 22" src="https://user-images.githubusercontent.com/70624406/97604861-4a878280-1a51-11eb-8f91-9313eceb32a5.png">

</p>


誤解や行き違いによるミスコミュニケーションの心配、言いたいことが伝わっているのか、伝わらないというストレスを解消してくれます</br>
・仕事の振り分け機能
</br>
・会議のアジェンダ
</br>
・時計機能
</br>
・スケージュール機能
</br>

そして最後それを議事録として保存できるようにしたので、後からその１画面を見るだけで会議の内容を見返すことができるようにしたことがポイントです。

<h2> 🎮 環境・使用技術 </h2>
### フロントエンド
- HTML/CSS
- JavaScript
- jQuery

### バックエンド
- Ruby 2.6.5
- Rails 6.0.3
### Webサーバー
- Nginx : 1.18.0
### アプリケーションサーバー
- （開発環境）Puma : 4.3.3
- （本番環境）Unicorn : 5.4.1
### データベース
- （開発環境）MySQL 5.6.47
- （本番環境）MariaDB : 5.5.64


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
