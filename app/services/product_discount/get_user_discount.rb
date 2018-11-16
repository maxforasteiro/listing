require 'protobuf/listing_services_pb'

module ProductDiscount
  class GetUserDiscount
    def self.get(product_id, user_id)
      return if user_id == nil

      self.new(product_id, user_id).get
    rescue
      Rails.logger.warn("Error while getting discount for product #{product_id} and user #{user_id}")
      dummy_response
    end

    def initialize(product_id, user_id)
      @service = ProductDiscount::Service.new
      @request = Listing::ListingRequest.new(
        product_id: product_id,
        user_id: user_id
      )
    end

    private

    attr_reader :service, :request

    def get
      service.get_discount(request)
    end

    def self.dummy_response
      Listing::ListingResponse.new(
        discount: Listing::Discount.new(
          pct: 0.0,
          value_in_cents: 0
        )
      )
    end
  end
end
