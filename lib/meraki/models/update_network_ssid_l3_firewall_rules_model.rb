# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSsidL3FirewallRulesModel Model.
  class UpdateNetworkSsidL3FirewallRulesModel < BaseModel
    # Allow wireless client access to local LAN (boolean value - true allows
    # access and false denies access) (optional)
    # @return [Boolean]
    attr_accessor :allow_lan_access

    # An ordered array of the firewall rules for this SSID (not including the
    # local LAN access rule or the default rule)
    # @return [List of Rule9Model]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allow_lan_access'] = 'allowLanAccess'
      @_hash['rules'] = 'rules'
      @_hash
    end

    def initialize(allow_lan_access = nil,
                   rules = nil)
      @allow_lan_access = allow_lan_access
      @rules = rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      allow_lan_access = hash['allowLanAccess']
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule9Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSsidL3FirewallRulesModel.new(allow_lan_access,
                                                rules)
    end
  end
end
