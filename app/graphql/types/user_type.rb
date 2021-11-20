module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :posts, [PostType], null: false

    def posts
      Loaders::AssociationLoader.for(User, :posts).load(object)
    end
  end
end
