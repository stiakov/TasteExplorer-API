class User < ApplicationRecord
  include LogValidationErrors

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :photos, as: :imageable
  has_many :reservations
  has_many :favorites

  validates_presence_of :first_name, :last_name
end
