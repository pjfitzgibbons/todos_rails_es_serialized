
class Todo < ApplicationRecord
  include Elasticsearch::Model

  mapping dynamic: false do
    indexes :item, type: :object do
      indexes :name
      indexes :date
    end
    indexes :created_at
    indexes :updated_at
  end
  
  serialize :item, TodoItem
  delegate :name, :name=,
          :date, :date=, to: :item

end
