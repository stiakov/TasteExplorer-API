class Commerce < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :commerce_type

  has_many :reservations
  has_many :photos, as: :imageable
  has_many :favorites

  validates_presence_of :name, :user, :commerce_type, :email, :country, :city, :state, :address
end
