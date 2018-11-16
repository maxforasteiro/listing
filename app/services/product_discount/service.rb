require 'protobuf/listing_services_pb'

module ProductDiscount
  class Service
    PRODUCT_DISCOUNT_URL = "localhost:8080"

    attr_accessor :connection

    def initialize
      @connection = Listing::ProductListingService::Stub.new(PRODUCT_DISCOUNT_URL, :this_channel_is_insecure)
    rescue => e
      Rails.logger.warn("Error trying to initialize connection with Product Discount Service")
    end

    def get_discount(request)
      connection.get_discount(request)
    end
  end
end
