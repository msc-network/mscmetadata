# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: recording_identifier.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "RecordingIdentifier" do
    optional :type, :enum, 1, "RecordingIdentifier.Type"
    optional :code, :string, 2
  end
  add_enum "RecordingIdentifier.Type" do
    value :ISRC, 0
    value :ISWC, 1
    value :ISMN, 2
    value :CUSTOM, 3
    value :GRID, 4
    value :IPI, 5
    value :CAE, 6
  end
end

RecordingIdentifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("RecordingIdentifier").msgclass
RecordingIdentifier::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("RecordingIdentifier.Type").enummodule
