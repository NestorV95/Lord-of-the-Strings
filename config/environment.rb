require 'rake'
require 'active_record'
# require 'yaml/store'
require 'require_all'
require 'sqlite3'

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/migrate/development.db'
)

require_all 'app'
