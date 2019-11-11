# require 'elasticsearch/persistence'
# class MyRepository
#   include Elasticsearch::Persistence::Repository
# end

# client = Elasticsearch::Client.new(url: 'http://localhost:9200', log: true)
# ES = MyRepository.new(client: client)

Elasticsearch::Model.client = Elasticsearch::Client.new log: true
