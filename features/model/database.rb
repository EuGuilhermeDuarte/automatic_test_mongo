class Database
  include Mongo

  def initialize(database_name)
    client = Mongo::Client.new(
      [CONFIG['base_uri']],
      database: database_name,
      replica_set: CONFIG['replica_set'],
      user: CONFIG['username_auth'],
      password: CONFIG['password_auth'],
      auth_source: CONFIG['database_auth']
    )
    @db = client.database
  end

  def insert(collection_name, query)
    @db[collection_name].insert_one(query)
    # TODO - analisar necessidade de log do mongo
  end

  def find(collection_name, query)
    @db[collection_name].find(query).first
  end
end
