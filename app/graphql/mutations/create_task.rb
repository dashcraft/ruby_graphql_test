class Mutations::CreateTask < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :description, String, required: true
    argument :status, Integer, required: false

    field :task, Types::TaskType, null: false
    field :errors, [String], null: false
  
    def resolve(user_id:, description:, status:)
      task = Task.new(user_id: user_id, description: description, status: status)
      if task.save
        # Successful creation, return the created object with no errors
        {
            task: task,
            errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
            task: nil,
            errors: user.errors.full_messages
        }
      end
    end
  end