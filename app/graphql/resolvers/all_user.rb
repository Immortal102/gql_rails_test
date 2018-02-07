class Resolvers::AllUser < GraphQL::Function
  type Types::UserType.to_list_type

  def call(_obj, args, _ctx)
    User.all
  end
end
