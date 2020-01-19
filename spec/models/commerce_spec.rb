require 'rails_helper'

RSpec.describe Commerce, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:country) }
  it { should belong_to(:commerce_type) }
  it { should have_many(:photos) }
  it { should have_many(:reservations) }
  it { should have_many(:favorites) }
end
