require 'active_record'

module BooksGem
  class Base < ::ActiveRecord::Base
    self.abstract_class = true
    establish_connection(BOOKS_GEM_DB[Rails.env])
  end
end