class Resolvers::AllLink < GraphQL::Function
  type Types::LinkType.to_list_type

  def call(_obj, args, _ctx)
    Link.all
  end
end
