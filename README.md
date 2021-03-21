
## hikers テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| age      | integer | null: false |
| weight   | integer | null: false |



### Association

- has_many :mountain_hikers
- has_many :mountains, through: mountain_hikers

## mountains テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| elevation         | integer    | null: false |
| level_id          | integer    | null: false |
| time_mountain_id  | integer    | null: false |
| prefecture_id    | integer    | null: false |
| municipality      | string     | null: false |
| address           | string     | null: false |
| name              | string     | null: false |
| explanation       | text       | null: false |
 


### Association

- has_many :mountain_hikers
- has_many :hikers, through: mountain_hikers

## mountain_hikers テーブル 

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| hiker       | references | null: false, foreign_key: true |
| mountain    | references | null: false, foreign_key: true |

### Association

- belongs_to :mountain
- belongs_to :hiker

