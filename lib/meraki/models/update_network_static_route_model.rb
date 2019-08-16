# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkStaticRouteModel Model.
  class UpdateNetworkStaticRouteModel < BaseModel
    # The subnet of the static route
    # @return [String]
    attr_accessor :subnet

    # The name of the static route
    # @return [String]
    attr_accessor :name

    # The gateway IP (next hop) of the static route
    # @return [String]
    attr_accessor :gateway_ip

    # The enabled state of the static route
    # @return [String]
    attr_accessor :enabled

    # The DHCP reserved IP ranges on the static route
    # @return [String]
    attr_accessor :reserved_ip_ranges

    # The DHCP fixed IP assignments on the static route
    # @return [String]
    attr_accessor :fixed_ip_assignments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subnet'] = 'subnet'
      @_hash['name'] = 'name'
      @_hash['gateway_ip'] = 'gatewayIp'
      @_hash['enabled'] = 'enabled'
      @_hash['reserved_ip_ranges'] = 'reservedIpRanges'
      @_hash['fixed_ip_assignments'] = 'fixedIpAssignments'
      @_hash
    end

    def initialize(subnet = nil,
                   name = nil,
                   gateway_ip = nil,
                   enabled = nil,
                   reserved_ip_ranges = nil,
                   fixed_ip_assignments = nil)
      @subnet = subnet
      @name = name
      @gateway_ip = gateway_ip
      @enabled = enabled
      @reserved_ip_ranges = reserved_ip_ranges
      @fixed_ip_assignments = fixed_ip_assignments
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subnet = hash['subnet']
      name = hash['name']
      gateway_ip = hash['gatewayIp']
      enabled = hash['enabled']
      reserved_ip_ranges = hash['reservedIpRanges']
      fixed_ip_assignments = hash['fixedIpAssignments']

      # Create object from extracted values.
      UpdateNetworkStaticRouteModel.new(subnet,
                                        name,
                                        gateway_ip,
                                        enabled,
                                        reserved_ip_ranges,
                                        fixed_ip_assignments)
    end
  end
end
