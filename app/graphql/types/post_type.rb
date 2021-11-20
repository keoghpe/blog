module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :featured, Boolean, null: false
    field :comments, [CommentType], null: false

    def comments
      Loaders::AssociationLoader.for(Post, :comments).load(object)
    end
  end
end
