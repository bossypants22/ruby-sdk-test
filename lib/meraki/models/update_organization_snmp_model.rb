# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationSnmpModel Model.
  class UpdateOrganizationSnmpModel < BaseModel
    # The SNMP version 3 authentication password. Must be at least 8 characters
    # if specified.
    # @return [String]
    attr_accessor :v3_auth_pass

    # The SNMP version 3 authentication mode. Can be either 'MD5' or 'SHA'.
    # @return [V3AuthModeEnum]
    attr_accessor :v3_auth_mode

    # Boolean indicating whether SNMP version 3 is enabled for the organization.
    # @return [Boolean]
    attr_accessor :v3_enabled

    # The IPs that are allowed to access the SNMP server. This list should be
    # IPv4 addresses separated by semi-colons (ie. "1.2.3.4;2.3.4.5").
    # @return [String]
    attr_accessor :peer_ips

    # Boolean indicating whether SNMP version 2c is enabled for the
    # organization.
    # @return [Boolean]
    attr_accessor :v2c_enabled

    # The SNMP version 3 privacy mode. Can be either 'DES' or 'AES128'.
    # @return [V3PrivModeEnum]
    attr_accessor :v3_priv_mode

    # The SNMP version 3 privacy password. Must be at least 8 characters if
    # specified.
    # @return [String]
    attr_accessor :v3_priv_pass

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['v3_auth_pass'] = 'v3AuthPass'
      @_hash['v3_auth_mode'] = 'v3AuthMode'
      @_hash['v3_enabled'] = 'v3Enabled'
      @_hash['peer_ips'] = 'peerIps'
      @_hash['v2c_enabled'] = 'v2cEnabled'
      @_hash['v3_priv_mode'] = 'v3PrivMode'
      @_hash['v3_priv_pass'] = 'v3PrivPass'
      @_hash
    end

    def initialize(v3_auth_pass = nil,
                   v3_auth_mode = nil,
                   v3_enabled = nil,
                   peer_ips = nil,
                   v2c_enabled = nil,
                   v3_priv_mode = nil,
                   v3_priv_pass = nil)
      @v3_auth_pass = v3_auth_pass
      @v3_auth_mode = v3_auth_mode
      @v3_enabled = v3_enabled
      @peer_ips = peer_ips
      @v2c_enabled = v2c_enabled
      @v3_priv_mode = v3_priv_mode
      @v3_priv_pass = v3_priv_pass
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      v3_auth_pass = hash['v3AuthPass']
      v3_auth_mode = hash['v3AuthMode']
      v3_enabled = hash['v3Enabled']
      peer_ips = hash['peerIps']
      v2c_enabled = hash['v2cEnabled']
      v3_priv_mode = hash['v3PrivMode']
      v3_priv_pass = hash['v3PrivPass']

      # Create object from extracted values.
      UpdateOrganizationSnmpModel.new(v3_auth_pass,
                                      v3_auth_mode,
                                      v3_enabled,
                                      peer_ips,
                                      v2c_enabled,
                                      v3_priv_mode,
                                      v3_priv_pass)
    end
  end
end
