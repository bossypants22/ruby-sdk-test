# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule2Model Model.
  class Rule2Model < BaseModel
    # The ID of the service VLAN. Required.
    # @return [String]
    attr_accessor :vlan_id

    # A description for your Bonjour forwarding rule. Optional.
    # @return [String]
    attr_accessor :description

    # A list of Bonjour services. At least one service must be specified.
    # Available services are 'All Services', 'AirPlay', 'AFP', 'BitTorrent',
    # 'FTP', 'iChat', 'iTunes', 'Printers', 'Samba', 'Scanners' and 'SSH'
    # @return [List of ServiceEnum]
    attr_accessor :services

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vlan_id'] = 'vlanId'
      @_hash['description'] = 'description'
      @_hash['services'] = 'services'
      @_hash
    end

    def initialize(vlan_id = nil,
                   services = nil,
                   description = nil)
      @vlan_id = vlan_id
      @description = description
      @services = services
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vlan_id = hash['vlanId']
      services = hash['services']
      description = hash['description']

      # Create object from extracted values.
      Rule2Model.new(vlan_id,
                     services,
                     description)
    end
  end
end
