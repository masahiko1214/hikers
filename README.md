


![image](https://user-images.githubusercontent.com/78416024/113465655-c8bcda80-9470-11eb-97a8-e53520efb07b.png)



## これは<span style="color: red; ">山×ヘルスケア</span>を目的としたアプリケーションです！！



## 作成背景、作者の 思い,願い

<br>

### 現代社会では近年健康ブームが到来しています、それに付随してカロリーの理解や運動習慣を付けてもらう事を目的にアプリを作成致しました、詳しい説明や特筆すべき事は以下の通りです。

<br>


1. 近年日本では健康ブームで活動スコアは高い、その結果ヘルスケアの注目度は高い為、それに付随したカロリーの理解や運動習慣が重要である。

<br>

2. 運動は生活習慣病のみならず認知症予防にも<span style="color: red; ">科学的なエビデンス</span>を持つ。

<br>

3. 山登りは運動強度が高い傾向にあるつまりMetsが高い為、人によるが<span style="color: red; ">消費カロリーは比較的高い。</span>

<br>

4. 運動を行うことで脳血流量の関係から、パフォーマンス向上も報告されている、つまり運動を行うことで毎日がより生産的になっていく、更には有酸素運動を行う人ほどクリエイティブな発想が出来ることも報告されている。

<br>

## 本アプリの<span style="color: red; ">URL</span>

###  https://hikers-1214.herokuapp.com


<br>

### テスト用アドレス

a@test.com

### テスト用パスワード

masa1214

<br>

## アプリの仕様   

<br>

### トップページは何も山の情報を登録していない場合は以下の様になっています

<br>

<img width="1217" alt="a1eb18f2ac4b820ea06326929603c013" src="https://user-images.githubusercontent.com/78416024/113531699-6d235600-9604-11eb-87ff-55ada2d6a656.png">

<br>
<br>



### 新規山登録より山の情報を誰でも登録することができます

<br>

![70614e6de0f4f93932b4f71279c0aa32](https://user-images.githubusercontent.com/78416024/113531467-d2c31280-9603-11eb-87b2-1025eb84b2ce.gif)

<br>

### トップページでは投稿されている山の確認、新規登録、ログイン等の機能を使うことが出来ます。   

<br>

![128d7931806e2e34c083ee6da84c7b49](https://user-images.githubusercontent.com/78416024/113501536-d94c7e00-9560-11eb-80e5-00d7640cc9f5.gif)

<br>


### ユーザー登録を行うとマイページにて山に登った際の消費カロリーを確認することができます！！  




<br>

![c70092d3402a2db6de4677501dc4d4e5](https://user-images.githubusercontent.com/78416024/113501468-385dc300-9560-11eb-80a4-85c635496958.gif)
<notextile> </notextile>  

<br>


### 登山を行うと登録されているHikerの体重と山の難易度、登山時間に応じて消費カロリーが計算されます

<br>


![025c7fa328495efd93be2012dd957241](https://user-images.githubusercontent.com/78416024/113501626-963eda80-9561-11eb-9a5b-153e2770596a.gif)


<br>
<br>
 

## 工夫した点

hikerのデータから体重と山の難易度をそれぞれ初級者を6Mets,中級者を7Mets,上級者を8Metsとして時間と掛け合わせ消費カロリーを計算出来るシステムをtrekkingモデルに組み込んだ点、これにより登り終わった際は<span style="color: red; ">すぐに消費カロリーを閲覧する</span>ことが可能です。

<br>
<br>


## 使用技術
<br>

## バックエンド
### Ruby Ruby on Rails

<br>

## フロントエンド
### CSS HTML

<br>

## データベース
### MySQL Sequel PRO

<br>

## 本番環境
### heroku

<br>

## ソース管理
### Git GitHub

<br>

## テスト
 ### RSpec


<br>

## エディタ
 ### VSCode





<br>
<br>


## 課題や今後実装していきたい機能

1. JavaScriptやReactなどを使い動きのあるトップページなどの実装

2. 課金要素、具体的には実際には課金しすることで使える機能を設ける

3. GoogleマップなどのAPI導入

<br>
<br>


  


## 下記は本アプリのDB設計です

<br>

## hikers テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| age      | integer | null: false |
| weight   | integer | null: false |

<br>

### Association

has_one    :mountain_hiker

<br>

## mountains テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| elevation         | integer    | null: false |
| level_id          | integer    | null: false |
| time_mountain_id  | integer    | null: false |
| prefecture_id     | integer    | null: false |
| municipality      | string     | null: false |
| address           | string     | null: false |
| name              | string     | null: false |
| explanation       | text       | null: false |
 

<br>

### Association

- has_many :mountain_hikers

<br>

## trekkings テーブル 

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| hiker       | references | null: false, foreign_key: true |
| mountain    | references | null: false, foreign_key: true |

### Association

<br>

- belongs_to :mountain
- belongs_to :hiker

