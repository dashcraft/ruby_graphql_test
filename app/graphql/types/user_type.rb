module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :phone_number, String, null: true
    field :password, String, null: true
    field :tasks, [Types::TaskType], null: true
    field :tasks_count, Integer, null: true
    field :created_at, String, null: false
    field :updated_at, String, null: false
    
    def tasks_count
      object.tasks.size
    end
  end
end
