# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: contact_method.proto

require 'google/protobuf'

require 'uuid_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("contact_method.proto", :syntax => :proto3) do
    add_message "mscmetadata.ContactMethod" do
      optional :uuid, :message, 1, "mscmetadata.UUID"
      optional :service_name, :string, 2
      optional :service_id, :string, 3
    end
  end
end

module Mscmetadata
  ContactMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mscmetadata.ContactMethod").msgclass
end
