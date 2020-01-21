class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :seat, :date_time, :user
  belongs_to :user, serializer: UserSerializer
end
