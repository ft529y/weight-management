# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| birthday           | date   | null: false               |
| initial_weight     | string | null: false               |
| height             | string | null: false               |

### Association

has_many :weights

## weightsテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| weight               | string     | null: false                    |
| user_id              | references | null: false, foreign_key: true |

### Association

belongs_to :user