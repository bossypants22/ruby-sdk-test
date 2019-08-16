# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CombineOrganizationNetworksModel Model.
  class CombineOrganizationNetworksModel < BaseModel
    # A list of the network IDs that will be combined. If an ID of a combined
    # network is included in this list, the other networks in the list will be
    # grouped into that network
    # @return [List of String]
    attr_accessor :network_ids

    # The name of the combined network
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['network_ids'] = 'networkIds'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(network_ids = nil,
                   name = nil)
      @network_ids = network_ids
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      network_ids = hash['networkIds']
      name = hash['name']

      # Create object from extracted values.
      CombineOrganizationNetworksModel.new(network_ids,
                                           name)
    end
  end
end
