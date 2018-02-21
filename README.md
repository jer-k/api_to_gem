# Connecting to an external database through a Gem
[Blog Post](https://jer-k.github.io/connect-to-database-through-gem/) about this repo.

To test out this project follow these steps:

I'm using Postgres so you'll need to create a user to own the databases
```bash
psql postgres --command="create role books_user with superuser login password 'books'"
```

First clone the project and setup the `books_api` project
```ruby
$ git clone https://github.com/jer-k/api_to_gem.git
$ cd books_api
$ bundle install
$ rails db:setup
```

Ensure that everything setup correctly
```ruby
$ rails c
2.4.0 :001 > Book.first
  Book Load (0.3ms)  SELECT  "books".* FROM "books" ORDER BY "books"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Book id: 1, title: "A Game of Thrones", pages: 694, published: 1996, author_id: 1, created_at: "2018-02-21 03:08:15", updated_at: "2018-02-21 03:08:15"> 
2.4.0 :002 > Author.first
  Author Load (0.3ms)  SELECT  "authors".* FROM "authors" ORDER BY "authors"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Author id: 1, name: "George R.R. Martin", age: 67, created_at: "2018-02-21 03:08:15", updated_at: "2018-02-21 03:08:15">
 2.4.0 :003 > exit
```

Setup the `library_system` project
```ruby
$ cd .. #Get back to the root of api_to_gem
$ cd library_system
$ bundle install
$ rails db:setup
```

Now query the `books_api` database!
```ruby
$ rails c
2.4.0 :001 > BooksGem::Book.first
  BooksGem::Book Load (0.4ms)  SELECT  "books".* FROM "books" ORDER BY "books"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<BooksGem::Book id: 1, title: "A Game of Thrones", pages: 694, published: 1996, author_id: 1, created_at: "2018-02-21 03:08:15", updated_at: "2018-02-21 03:08:15"> 
2.4.0 :002 > BooksGem::Author.first
  BooksGem::Author Load (0.5ms)  SELECT  "authors".* FROM "authors" ORDER BY "authors"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<BooksGem::Author id: 1, name: "George R.R. Martin", age: 67, created_at: "2018-02-21 03:08:15", updated_at: "2018-02-21 03:08:15"> 
```
