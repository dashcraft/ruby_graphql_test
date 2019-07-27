module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # User Queries
    field :users, [Types::UserType], null: false
    
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end


    # Task Queries
    field :tasks, [Types::TaskType], null: false
    def tasks
      Task.all
    end

    field :task, Types::TaskType, null: false do
      argument :id, ID, required: true
    end

    def task(id:)
      Task.find(id)
    end
        
  end
end
