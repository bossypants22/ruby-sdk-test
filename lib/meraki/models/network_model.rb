# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # NetworkModel Model.
  class NetworkModel < BaseModel
    # The privilege of the SAML administrator on the network
    # @return [String]
    attr_accessor :access

    # The network ID
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access'] = 'access'
      @_hash['id'] = 'id'
      @_hash
    end

    def initialize(access = nil,
                   id = nil)
      @access = access
      @id = id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access = hash['access']
      id = hash['id']

      # Create object from extracted values.
      NetworkModel.new(access,
                       id)
    end
  end
end
