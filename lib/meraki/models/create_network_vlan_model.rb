# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkVlanModel Model.
  class CreateNetworkVlanModel < BaseModel
    # The subnet of the VLAN
    # @return [String]
    attr_accessor :subnet

    # The name of the new VLAN
    # @return [String]
    attr_accessor :name

    # The VLAN ID of the new VLAN (must be between 1 and 4094)
    # @return [String]
    attr_accessor :id

    # The local IP of the appliance on the VLAN
    # @return [String]
    attr_accessor :appliance_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subnet'] = 'subnet'
      @_hash['name'] = 'name'
      @_hash['id'] = 'id'
      @_hash['appliance_ip'] = 'applianceIp'
      @_hash
    end

    def initialize(subnet = nil,
                   name = nil,
                   id = nil,
                   appliance_ip = nil)
      @subnet = subnet
      @name = name
      @id = id
      @appliance_ip = appliance_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subnet = hash['subnet']
      name = hash['name']
      id = hash['id']
      appliance_ip = hash['applianceIp']

      # Create object from extracted values.
      CreateNetworkVlanModel.new(subnet,
                                 name,
                                 id,
                                 appliance_ip)
    end
  end
end
