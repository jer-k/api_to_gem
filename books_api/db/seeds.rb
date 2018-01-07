# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ages are probably wrong, I used this seed data in a past project

george = Author.find_or_create_by(name: "George R.R. Martin", age: 67)

[
  {title: "A Game of Thrones", pages: 694, published: 1996, author: george},
  {title: "A Clash of Kings", pages: 768, published: 1998, author: george},
  {title: "A Storm of Swords", pages: 973, published: 2000, author: george},
  {title: "A Feast for Crows", pages: 753, published: 2005, author: george},
  {title: "A Dance with Dragons", pages: 1004, published: 2012, author: george}
].each do |book|
  Book.find_or_create_by(book)
end

jk = Author.find_or_create_by(name: "J.K. Rowling", age: 50)

[
  {title: "Harry Potter and the Sorcerer's Stone", pages: 309, published: 1997, author: jk},
  {title: "Harry Potter and the Chamber Of Secrets", pages: 341, published: 1998, author: jk},
  {title: "Harry Potter and the Prisoner of Azkaban", pages: 435, published: 1999, author: jk},
  {title: "Harry Potter and the Goblet of Fire", pages: 734, published: 2000, author: jk},
  {title: "Harry Potter and the Order of the Phoenix", pages: 870, published: 2003, author: jk},
  {title: "Harry Potter and the Half-Blood Prince", pages: 652, published: 2005, author: jk},
  {title: "Harry Potter and the Deathly Hallows", pages: 759, published: 2007, author: jk}
].each do |book|
  Book.find_or_create_by(book)
end