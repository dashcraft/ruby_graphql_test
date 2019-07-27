module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::UserType, null: false
    field :description, String, null: true
    field :status, Integer, null: true
    field :created_at, String, null: false
    field :updated_at, String, null: false
  end
end
