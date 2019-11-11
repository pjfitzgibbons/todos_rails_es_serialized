
class TodoItemValidator < Dry::Validation::Contract
  params do
    required(:name).filled(:string)
    optional(:description).value(:string)
  end
end
