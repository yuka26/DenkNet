# データベース設計
## ユーザテーブル
| 項目     | 型     | オプション |
| -------- | ------ | ---------- |
| email    | string | 必須要素である   |
| password | string | 必須要素である   |
| screen_name|string| 必須要素である   |
| user_name  |string| 必須要素である   |
| is_folklore|bool  | 伝承者判断基準   |
| is_successor|bool | 継承者基準判断  |
| furigana   |string|必須要素である    |
| icon       |string|画像のURLを保存   |
| tel_number |int   | 必須要素である   |
| birthday   |date  | 必須要素である   |
| identity   |bool  | 必須要素である   |
| bio        |String| 自己紹介         |
| gender     | int | 必須要素である    |

## マッチング