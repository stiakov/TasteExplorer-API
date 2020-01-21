class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :commerce
  belongs_to :user, serializer: UserSerializer
end
