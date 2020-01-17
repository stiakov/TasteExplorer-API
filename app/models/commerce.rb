class Commerce < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :commerce_type
end
ext