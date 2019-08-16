# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkStaticRouteModel Model.
  class CreateNetworkStaticRouteModel < BaseModel
    # The subnet of the static route
    # @return [String]
    attr_accessor :subnet

    # The name of the new static route
    # @return [String]
    attr_accessor :name

    # The gateway IP (next hop) of the static route
    # @return [String]
    attr_accessor :gateway_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subnet'] = 'subnet'
      @_hash['name'] = 'name'
      @_hash['gateway_ip'] = 'gatewayIp'
      @_hash
    end

    def initialize(subnet = nil,
                   name = nil,
                   gateway_ip = nil)
      @subnet = subnet
      @name = name
      @gateway_ip = gateway_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subnet = hash['subnet']
      name = hash['name']
      gateway_ip = hash['gatewayIp']

      # Create object from extracted values.
      CreateNetworkStaticRouteModel.new(subnet,
                                        name,
                                        gateway_ip)
    end
  end
end
