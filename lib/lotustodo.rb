require 'lotus/model'
Dir["#{ __dir__ }/lotustodo/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/lotustodo_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/lotustodo_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/lotustodo_development'
  #    adapter type: :sql, uri: 'mysql://localhost/lotustodo_development'
  #
  adapter type: :sql, uri: ENV['LOTUSTODO_DATABASE_URL']

  ##
  # Database mapping
  #
  # You can specify mapping file to load with:
  #
  mapping "#{__dir__}/config/mapping"
end.load!
