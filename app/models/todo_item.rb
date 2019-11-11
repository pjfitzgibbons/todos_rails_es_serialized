
class TodoItem < Hashie::Dash
  # extend FastAttributes
  # define_attributes initialize: true, attributes: true do
  #   attribute :name, String
  #   attribute :description, String
  # end

  # < Dry::Struct
  # attribute :name, Types::String

  include Hashie::Extensions::Dash::Coercion
  include Hashie::Extensions::Dash::IndifferentAccess
  include Hashie::Extensions::Dash::PropertyTranslation

  property :name, required: true
  property :date

  property :todo_id

  coerce_key :date, Types::DateCoerce

  def self.load(str)
    json = JSON.load(str)
    new(json) if json
  end

  def self.dump(todo_item)
    todo_item.to_json
  end

end
