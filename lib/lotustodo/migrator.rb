require_relative '../../config/environment'
module Todos
  class Migrator
    require 'sequel'
    Sequel.extension :migration
    def self.migrate!
      db = Sequel.connect(ENV.fetch('LOTUSTODO_DATABASE_URL'))
      Sequel::Migrator.run(db, "#{__dir__}/../../db/migrations")
    end
  end
end
