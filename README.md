# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column  |Type  |Option    |
|--------|------|----------|
|nickname|string|null:false|
|password|srting|null:false|
|email   |srting|null:false|

• has_many :posts :posts

## postsテーブル
|Column  |Type  |Option    |
|--------|------|----------|
|image|string|null:false|
|user_id|references|forign_key:true|
|category_id|integer|null:false,foreign_key:true|

## likesテーブル
|Column  |Type  |Option    |
|--------|------|----------|
|likes_users|reference|null:false,forein_key:true|
|likes_posts|reference|null:false,forein_key:true|