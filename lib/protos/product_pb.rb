# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: product.proto

require 'google/protobuf'

require_relative 'release_pb'
require_relative 'sender_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Product" do
    optional :release, :message, 1, "Release"
    optional :sender, :message, 2, "Sender"
  end
end

Product = Google::Protobuf::DescriptorPool.generated_pool.lookup("Product").msgclass
