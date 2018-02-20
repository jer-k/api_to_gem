require 'yaml'
require 'erb'

this_file_path = File.expand_path('../', __FILE__)
BOOKS_GEM_DB = YAML.load(ERB.new(IO.read(File.join(this_file_path, 'books_gem_database.yml'))).result)
