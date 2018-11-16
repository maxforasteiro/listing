class Product < ApplicationRecord

  validates_presence_of :price_in_cents, :title, :description
end
