class User < ApplicationRecord
  include LogValidationErrors

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :commerces, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :photos, as: :imageable, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates_presence_of :first_name, :last_name
end
