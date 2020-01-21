class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :commerce
  belongs_to :user, serializer: UserSerializer
end
