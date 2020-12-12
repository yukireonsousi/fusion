# userテーブル
|Column|Type|Options|
|------|----|-------|
|
|name|string|null: false|
|email|string|null: false, unipue: true|
|password|string|null: false|
|address|string|null: false|
|admin|boolean|null: false|
## Association
- has_many :baggages



# baggageテーブル
|Column|Type|Options|
|------|----|-------|
|type|string|null: false|
|storage_period|string|null: false
|code|string|null: false
## Association
belong_to :user


# アプリ名 
## fusion
# 概要
ユーザーの荷物を一時的に預かるサービスの管理
# 制作背景(意図)
ネット通販の利用者の増加に対して、配達員の数が足りていない現状の解決
配送所に届いた荷物を一時的に預かる事で

①一度目の配達の数を減らせる

②お客様が取りに来られれば配達しなくていい
​
# 使用技術
言語: Haml・SCSS・Ruby・Ruby on Rails・jQuery

AWSを用いてデプロイ

# テストアカウント

  Name
  管理者
  Address
  神奈川県鎌倉市小町111
  Email
  admin@example.jp
  Password
  11111111
  
# プレビュー

![画面収録 2020-12-12 17 02 42 mov](https://user-images.githubusercontent.com/63407796/101978960-6448f600-3c9c-11eb-9d00-795b6705213f.gif)


  
