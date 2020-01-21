class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user, :seat, :date_time
  belongs_to :user, serializer: UserSerializer
end
