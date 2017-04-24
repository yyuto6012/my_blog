# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

# example

## tables
- column type restriction

## blogs
- id
- title string null: false
- blog_url text null: false
- content text
- header_photo_path string null: false
- status integer default 0
- timestamps null: false

## blog_categories
- id
- name string null: false
- description text

## likes
- id
- blog_id

## users
- id
- name string null:false
- description text
- avatar string

## photos
- id
- photo_path string null: false
- blog_id

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
