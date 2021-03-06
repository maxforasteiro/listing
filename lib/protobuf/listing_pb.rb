# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: listing.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Listing.ListingRequest" do
    optional :product_id, :int64, 1
    optional :user_id, :int64, 2
  end
  add_message "Listing.ListingResponse" do
    optional :discount, :message, 1, "Listing.Discount"
  end
  add_message "Listing.Discount" do
    optional :pct, :float, 1
    optional :value_in_cents, :int64, 2
  end
end

module Listing
  ListingRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("Listing.ListingRequest").msgclass
  ListingResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("Listing.ListingResponse").msgclass
  Discount = Google::Protobuf::DescriptorPool.generated_pool.lookup("Listing.Discount").msgclass
end
