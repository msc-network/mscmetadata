# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: uuid.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("uuid.proto", :syntax => :proto3) do
    add_message "mscmetadata.UUID" do
      optional :value, :string, 1
    end
  end
end

module Mscmetadata
  UUID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mscmetadata.UUID").msgclass
end