class Mutations::CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone_number, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false
  
    def resolve(name:, email:, phone_number:)
      user = User.new(name: name, email: email, phone_number: phone_number)
      if user.save
        # Successful creation, return the created object with no errors
        {
            user: user,
            errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
            user: nil,
            errors: user.errors.full_messages
        }
      end
    end
  end