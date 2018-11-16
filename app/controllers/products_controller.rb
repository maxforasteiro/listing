class ProductsController < ApplicationController
  before_action :set_user

  def index
    @products = Product.all

    # check for errors with service
    @products_with_discount = @products.map do |product|
      # discount = ProductDiscount::GetUserDiscount.get(product.id, @user.id)
      discount = { pct: 15.0, value_in_cents: 1243 }

      product.attributes.symbolize_keys.merge({ discount: discount })
    end

    json_response(@products_with_discount)
  end

  private

  def set_user
    @user = User.last
  end
end
