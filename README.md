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


Name fusion
====

荷物を一時預かり、ユーザーの配達依頼があった日時に、配達するサービスを管理するシステム

## Description

## Demo

## VS. 

## Requirement

## Usage

## Install

## Contribution

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[tcnksm](https://github.com/tcnksm)