module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_task, mutation: Mutations::CreateTask
  end
end
