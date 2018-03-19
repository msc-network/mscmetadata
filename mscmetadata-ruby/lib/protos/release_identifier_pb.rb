# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: release_identifier.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "ReleaseIdentifier" do
    optional :type, :enum, 1, "ReleaseIdentifier.Type"
    optional :custom_type, :string, 2
    optional :code, :string, 3
  end
  add_enum "ReleaseIdentifier.Type" do
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
  end
end

ReleaseIdentifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("ReleaseIdentifier").msgclass
ReleaseIdentifier::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("ReleaseIdentifier.Type").enummodule