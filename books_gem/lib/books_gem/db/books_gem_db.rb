require 'yaml'
require 'erb'

db_dir = File.expand_path('../', __FILE__)
BOOKS_GEM_DB = YAML.load(ERB.new(IO.read(File.join(db_dir, 'books_gem_database.yml'))).result)
