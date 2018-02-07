class Resolvers::CreateUser < GraphQL::Function
  argument :name, !types.String
  argument :authData, !Types::EmailAuthInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:authData][:email],
      password: args[:authData][:password]
    )
  end
end
