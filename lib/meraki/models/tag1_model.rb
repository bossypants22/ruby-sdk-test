# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Tag1Model Model.
  class Tag1Model < BaseModel
    # The privilege of the dashboard administrator on the tag
    # @return [String]
    attr_accessor :access

    # The name of the tag
    # @return [String]
    attr_accessor :tag

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access'] = 'access'
      @_hash['tag'] = 'tag'
      @_hash
    end

    def initialize(access = nil,
                   tag = nil)
      @access = access
      @tag = tag
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access = hash['access']
      tag = hash['tag']

      # Create object from extracted values.
      Tag1Model.new(access,
                    tag)
    end
  end
end
