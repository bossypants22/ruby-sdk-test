# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ApTagsAndVlanIdModel Model.
  class ApTagsAndVlanIdModel < BaseModel
    # Numerical identifier that is assigned to the VLAN
    # @return [Integer]
    attr_accessor :vlan_id

    # Comma-separated list of AP tags
    # @return [String]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vlan_id'] = 'vlanId'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(vlan_id = nil,
                   tags = nil)
      @vlan_id = vlan_id
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vlan_id = hash['vlanId']
      tags = hash['tags']

      # Create object from extracted values.
      ApTagsAndVlanIdModel.new(vlan_id,
                               tags)
    end
  end
end
