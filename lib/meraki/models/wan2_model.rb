# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WAN 2 settings (only for MX devices)
  class Wan2Model < BaseModel
    # The IP of the gateway on the WAN.
    # @return [String]
    attr_accessor :static_gateway_ip

    # Up to two DNS IPs.
    # @return [List of String]
    attr_accessor :static_dns

    # The VLAN that management traffic should be tagged with. Applies whether
    # usingStaticIp is true or false.
    # @return [Integer]
    attr_accessor :vlan

    # Enable or disable the interface (only for MX devices). Valid values are
    # 'enabled', 'disabled', and 'not configured'.
    # @return [WanEnabledEnum]
    attr_accessor :wan_enabled

    # The IP the device should use on the WAN.
    # @return [String]
    attr_accessor :static_ip

    # The subnet mask for the WAN.
    # @return [String]
    attr_accessor :static_subnet_mask

    # Configue the interface to have static IP settings or use DHCP.
    # @return [Boolean]
    attr_accessor :using_static_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['static_gateway_ip'] = 'staticGatewayIp'
      @_hash['static_dns'] = 'staticDns'
      @_hash['vlan'] = 'vlan'
      @_hash['wan_enabled'] = 'wanEnabled'
      @_hash['static_ip'] = 'staticIp'
      @_hash['static_subnet_mask'] = 'staticSubnetMask'
      @_hash['using_static_ip'] = 'usingStaticIp'
      @_hash
    end

    def initialize(static_gateway_ip = nil,
                   static_dns = nil,
                   vlan = nil,
                   wan_enabled = nil,
                   static_ip = nil,
                   static_subnet_mask = nil,
                   using_static_ip = nil)
      @static_gateway_ip = static_gateway_ip
      @static_dns = static_dns
      @vlan = vlan
      @wan_enabled = wan_enabled
      @static_ip = static_ip
      @static_subnet_mask = static_subnet_mask
      @using_static_ip = using_static_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      static_gateway_ip = hash['staticGatewayIp']
      static_dns = hash['staticDns']
      vlan = hash['vlan']
      wan_enabled = hash['wanEnabled']
      static_ip = hash['staticIp']
      static_subnet_mask = hash['staticSubnetMask']
      using_static_ip = hash['usingStaticIp']

      # Create object from extracted values.
      Wan2Model.new(static_gateway_ip,
                    static_dns,
                    vlan,
                    wan_enabled,
                    static_ip,
                    static_subnet_mask,
                    using_static_ip)
    end
  end
end
