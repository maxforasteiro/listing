module ProductDiscount
  class Service
    PRODUCT_DISCOUNT_URL = "localhost:8080"

    attr_accessor :connection

    def initialize
      @connection = Listing::ProductListingService::Stub.new(ACCOUNT_RECONCILIATION_URL, :this_channel_is_insecure)
    rescue => e
      ErrorTracker.notify(e)
    end

    def get_discount(request)
      connection.get_discount(request)
    end
  end
end
