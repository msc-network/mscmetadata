# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: recording.proto

require 'google/protobuf'

require_relative 'artist_pb'
require_relative 'contributor_pb'
require_relative 'genre_pb'
require_relative 'registration_pb'
require_relative 'recording_identifier_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Recording" do
    optional :uuid, :string, 1
    repeated :artists, :message, 2, "Artist"
    optional :title, :string, 3
    optional :mix_title, :string, 4
    optional :copyright_year, :int32, 5
    optional :explicit, :bool, 6
    optional :length, :int32, 7
    optional :release_position, :int32, 8
    repeated :registrations, :message, 9, "Registration"
    repeated :genres, :message, 10, "Genre"
    repeated :contributors, :message, 11, "Contributor"
    repeated :recording_identifier, :message, 12, "RecordingIdentifier"
  end
end

Recording = Google::Protobuf::DescriptorPool.generated_pool.lookup("Recording").msgclass
