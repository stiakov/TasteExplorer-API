class Commerce < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :commerce_type
  validates_presence_of :name, :user, :commerce_type, :email, :country, :city, :state, :address
end
ext