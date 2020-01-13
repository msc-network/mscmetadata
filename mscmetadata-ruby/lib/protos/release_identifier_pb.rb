# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: release_identifier.proto

require 'google/protobuf'

require 'uuid_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("release_identifier.proto", :syntax => :proto3) do
    add_message "mscmetadata.ReleaseIdentifier" do
      optional :uuid, :message, 1, "mscmetadata.UUID"
      optional :type, :enum, 2, "mscmetadata.ReleaseIdentifier.Type"
      optional :custom_type, :string, 3
      optional :code, :string, 4
    end
    add_enum "mscmetadata.ReleaseIdentifier.Type" do
      value :BARCODE, 0
      value :EAN13, 0
      value :GTIN12, 0
      value :GTIN13, 0
      value :UPC, 0
      value :GRID, 1
      value :SID, 2
      value :CUSTOM, 3
      value :MUSICBRAINZ, 4
      value :MATRIX, 5
      value :ASIN, 6
      value :DISCOGS, 7
      value :ALLMUSIC, 8
    end
  end
end

module Mscmetadata
  ReleaseIdentifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mscmetadata.ReleaseIdentifier").msgclass
  ReleaseIdentifier::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mscmetadata.ReleaseIdentifier.Type").enummodule
end
