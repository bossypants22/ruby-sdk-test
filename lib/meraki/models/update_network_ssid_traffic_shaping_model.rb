# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSsidTrafficShapingModel Model.
  class UpdateNetworkSsidTrafficShapingModel < BaseModel
    # Whether traffic shaping rules are applied to clients on your SSID.
    # @return [Boolean]
    attr_accessor :traffic_shaping_enabled

    # Whether default traffic shaping rules are enabled (true) or disabled
    # (false).
    #     There are 4 default rules, which can
    #     be seen on your network's traffic shaping page. Note that default
    # rules
    #     count against the rule limit of 8.
    # @return [Boolean]
    attr_accessor :default_rules_enabled

    # An array of traffic shaping rules. Rules are applied in the order that
    #     they are specified in. An empty list (or null) means no rules. Note
    # that
    #     you are allowed a maximum of 8 rules.
    # @return [List of Rule9Model]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['traffic_shaping_enabled'] = 'trafficShapingEnabled'
      @_hash['default_rules_enabled'] = 'defaultRulesEnabled'
      @_hash['rules'] = 'rules'
      @_hash
    end

    def initialize(traffic_shaping_enabled = nil,
                   default_rules_enabled = nil,
                   rules = nil)
      @traffic_shaping_enabled = traffic_shaping_enabled
      @default_rules_enabled = default_rules_enabled
      @rules = rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      traffic_shaping_enabled = hash['trafficShapingEnabled']
      default_rules_enabled = hash['defaultRulesEnabled']
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule9Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSsidTrafficShapingModel.new(traffic_shaping_enabled,
                                               default_rules_enabled,
                                               rules)
    end
  end
end
