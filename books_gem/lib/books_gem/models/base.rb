require 'active_record'
require 'books_gem/db/books_gem_db'

module BooksGem
  class Base < ::ActiveRecord::Base
    self.abstract_class = true
    establish_connection(BOOKS_GEM_DB[Rails.env])
  end
end