# データベース設計
## 伝承者 (folklore)

| 項目     | 型     | オプション |
| -------- | ------ | ---------- |
| id       | int    | 自動採番(1からスタート)   |
| user_id  | varchar   | 必須要素、重複許可しない、ログインIDに使用   |
| tel_number |int   | 必須要素である、重複許可しない、ログインIDに使用   |
| email    | string | 任意要素である   |
| password | string | 必須要素である   |
| gender     | int | 必須要素である、性別    |
| screen_name|string| 必須要素である、ニックネーム   |
| user_name  |string| 必須要素である、本名   |
| furigana   |string|必須要素である、本名のふりがな    |
| icon       |string|プロフィールアイコン、画像のURLを保存   |
| birthday   |date  | 必須要素である、誕生日   |
| identity   |bool  | 必須要素である、本人確認済: true、未確認: false|  |
| bio        |string| 自己紹介         |

## 継承者 (successor)

| 項目     | 型     | オプション |
| -------- | ------ | ---------- |
| id       | int    | 自動採番(1からスタート)   |
| user_id  | varchar   | 必須要素、重複許可しない、ログインIDに使用   |
| email    | string | 必須要素である   |
| password | string | 必須要素である   |
| gender     | int | 必須要素である、性別    |
| screen_name|string| 必須要素である、ニックネーム   |
| user_name  |string| 必須要素である、本名   |
| furigana   |string|必須要素である、本名のふりがな    |
| icon       |string|プロフィールアイコン、画像のURLを保存   |
| tel_number |int   | 必須要素である、電話番号   |
| birthday   |date  | 必須要素である、誕生日   |
| identity   |bool  | 必須要素である、本人確認済: true、未確認: false|
| bio        |String| 自己紹介         |

## マッチング (matching)
| 項目    | 型  |オプション |
|--------   |-----|---------|
| folklore.id  | int |  伝承者のID  |
| successor.id | int | 継承者のID   |
| message   | string | 任意の要素、継承者による申請メッセージ |
| is_approve  | bool|null | 選択要素,デフォルトはNULL,マッチしたorしてない |
| candidate_datetime | string | 電話候補日時、カンマ区切りで日時を書く(例: "2022-01-22 10:00,2022-03-11 11:00,2022-04-11 13:00" ) 、必須要素である|
| phone_call_datetime | datetime | 確定電話日時、電話する日程、必須要素|

## 大カテゴリ (large_category)
|項目|型|オプション|
| -------- | ------ | ---------- |
| id | int | 自動採番(1からスタート) |
| name | string | 大カテゴリ名(例: 安来節) (出雲神楽) (郷土料理) (出雲弁)|

## 小カテゴリ (small_category)
|項目|型|オプション|
| -------- | ------ | ---------- |
| id | int | 自動採番(1からスタート) |
| large_category.id | int | 大カテゴリのID |
| name | string | 小カテゴリ名(安来節の例: 全般、歌、踊り、その他) |

## 伝承者⇄小カテゴリ紐付け (folklore_small_category)
|項目|型|オプション|
| -------- | ------ | ---------- |
| folklore.id  | int   | 必須要素、伝承者テーブルのID |
| small_category.id | int   | 必須要素、小カテゴリテーブルのID |

## 継承者⇄小カテゴリ紐付け (succerssor_small_category)
|項目|型|オプション|
| -------- | ------ | ---------- |
| successor.id  | int   | 必須要素、継承者テーブルのID |
| small_category.id | int   | 必須要素、小カテゴリテーブルのID |