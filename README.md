


![image](https://user-images.githubusercontent.com/78416024/113465655-c8bcda80-9470-11eb-97a8-e53520efb07b.png)



## これは<span style="color: red; ">山×ヘルスケア</span>を目的としてアプリケーションです！！

<notextile> </notextile>

## _作成背景、作者の 思い,願い_

## 現代社会では近年健康ブームが到来しています、それに付随してカロリーの理解や運動習慣を付けてもらう事を目的にアプリを作成致しました、詳しい説明や特筆すべき事は以下の通りです。

<notextile> </notextile>


1. 近年日本では健康ブームで活動スコアは高い、その為ヘルスケアの注目度は高い為、それに付随したカロリーの理解や運動習慣が重要である。

2. 運動は生活習慣病のみならず認知症予防にも<span style="color: red; ">科学的なエビデンス</span>を持つ。

3. 山登りは運動強度が高い傾向にあるつまりMetsが高い為、人によるが<span style="color: red; ">消費カロリーは比較的高い。</span>

4. 運動を行うことで脳血流量の関係から、パフォーマンス向上も報告されている、つまり運動を行うことで毎日がより生産的になっていく、更には有酸素運動を行う人ほどクリエイティブな発想が出来ることも報告されている。



## hikers テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| age      | integer | null: false |
| weight   | integer | null: false |



### Association

has_one    :mountain_hiker

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
 


### Association

- has_many :mountain_hikers

## trekkings テーブル 

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| hiker       | references | null: false, foreign_key: true |
| mountain    | references | null: false, foreign_key: true |

### Association

- belongs_to :mountain
- belongs_to :hiker

