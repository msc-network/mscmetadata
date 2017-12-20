# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: release.proto

require 'google/protobuf'

require_relative 'artist_pb'
require_relative 'contributor_pb'
require_relative 'attached_file_pb'
require_relative 'recording_pb'
require_relative 'release_identifier_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Release" do
    optional :uuid, :string, 1
    repeated :attached_files, :message, 2, "AttachedFile"
    repeated :artists, :message, 3, "Artist"
    optional :title, :string, 4
    optional :catalogue_number, :string, 5
    optional :release_date, :string, 6
    optional :record_label, :string, 7
    repeated :identifier, :message, 8, "ReleaseIdentifier"
    optional :genre, :string, 9
    optional :style, :string, 10
    optional :copyright_year, :int32, 11
    optional :c_line, :string, 12
    optional :p_line, :string, 13
    optional :biography, :string, 14
    optional :original_format, :string, 15
    optional :country_of_issue, :string, 16
    repeated :contributors, :message, 17, "Contributor"
    repeated :recordings, :message, 18, "Recording"
  end
end

Release = Google::Protobuf::DescriptorPool.generated_pool.lookup("Release").msgclass
