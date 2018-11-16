require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of(:price_in_cents) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
