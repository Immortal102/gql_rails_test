Types::EmailAuthInput = GraphQL::InputObjectType.define do
  name 'AuthByEmail'

  argument :email, !types.String
  argument :password, !types.String
end
