# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: society.proto

require 'google/protobuf'

require 'uuid_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("society.proto", :syntax => :proto3) do
    add_message "mscmetadata.Society" do
      optional :uuid, :message, 1, "mscmetadata.UUID"
    end
  end
end

module Mscmetadata
  Society = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mscmetadata.Society").msgclass
end