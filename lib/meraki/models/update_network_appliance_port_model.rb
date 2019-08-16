# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkAppliancePortModel Model.
  class UpdateNetworkAppliancePortModel < BaseModel
    # Native VLAN when the port is in Trunk mode. Access VLAN when the port is
    # in Access mode.
    # @return [Integer]
    attr_accessor :vlan

    # Trunk port can Drop all Untagged traffic. When true, no VLAN is required.
    # Access ports cannot have dropUntaggedTraffic set to true.
    # @return [Boolean]
    attr_accessor :drop_untagged_traffic

    # The name of the policy. Only applicable to Access ports. Valid values are:
    # 'open', '8021x-radius', 'mac-radius', 'hybris-radius' for MX64 or Z3 or
    # any MX supporting the per port authentication feature. Otherwise, 'open'
    # is the only valid value and 'open' is the default value if the field is
    # missing.
    # @return [String]
    attr_accessor :access_policy

    # The type of the port: 'access' or 'trunk'.
    # @return [String]
    attr_accessor :type

    # The status of the port
    # @return [Boolean]
    attr_accessor :enabled

    # Comma-delimited list of the VLAN ID's allowed on the port, or 'all' to
    # permit all VLAN's on the port.
    # @return [String]
    attr_accessor :allowed_vlans

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vlan'] = 'vlan'
      @_hash['drop_untagged_traffic'] = 'dropUntaggedTraffic'
      @_hash['access_policy'] = 'accessPolicy'
      @_hash['type'] = 'type'
      @_hash['enabled'] = 'enabled'
      @_hash['allowed_vlans'] = 'allowedVlans'
      @_hash
    end

    def initialize(vlan = nil,
                   drop_untagged_traffic = nil,
                   access_policy = nil,
                   type = nil,
                   enabled = nil,
                   allowed_vlans = nil)
      @vlan = vlan
      @drop_untagged_traffic = drop_untagged_traffic
      @access_policy = access_policy
      @type = type
      @enabled = enabled
      @allowed_vlans = allowed_vlans
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vlan = hash['vlan']
      drop_untagged_traffic = hash['dropUntaggedTraffic']
      access_policy = hash['accessPolicy']
      type = hash['type']
      enabled = hash['enabled']
      allowed_vlans = hash['allowedVlans']

      # Create object from extracted values.
      UpdateNetworkAppliancePortModel.new(vlan,
                                          drop_untagged_traffic,
                                          access_policy,
                                          type,
                                          enabled,
                                          allowed_vlans)
    end
  end
end
