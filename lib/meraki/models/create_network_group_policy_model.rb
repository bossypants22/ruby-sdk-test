# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkGroupPolicyModel Model.
  class CreateNetworkGroupPolicyModel < BaseModel
    # The VLAN tagging settings for your group policy. Only available if your
    # network has a wireless configuration.
    # @return [VlanTaggingModel]
    attr_accessor :vlan_tagging

    # The content filtering settings for your group policy
    # @return [ContentFilteringModel]
    attr_accessor :content_filtering

    # The Bonjour settings for your group policy. Only valid if your network has
    # a wireless configuration.
    # @return [BonjourForwardingModel]
    attr_accessor :bonjour_forwarding

    # The bandwidth settings for clients bound to your group policy.
    # @return [BandwidthModel]
    attr_accessor :bandwidth

    # Whether clients bound to your policy will bypass splash authorization or
    # behave according to the network's rules. Can be one of 'network default'
    # or 'bypass'. Only available if your network has a wireless configuration.
    # @return [SplashAuthSettingsEnum]
    attr_accessor :splash_auth_settings

    # The name for your group policy. Required.
    # @return [String]
    attr_accessor :name

    # The schedule for the group policy. Schedules are applied to days of the
    # week.
    # @return [SchedulingModel]
    attr_accessor :scheduling

    # The firewall and traffic shaping rules and settings for your policy.
    # @return [FirewallAndTrafficShapingModel]
    attr_accessor :firewall_and_traffic_shaping

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vlan_tagging'] = 'vlanTagging'
      @_hash['content_filtering'] = 'contentFiltering'
      @_hash['bonjour_forwarding'] = 'bonjourForwarding'
      @_hash['bandwidth'] = 'bandwidth'
      @_hash['splash_auth_settings'] = 'splashAuthSettings'
      @_hash['name'] = 'name'
      @_hash['scheduling'] = 'scheduling'
      @_hash['firewall_and_traffic_shaping'] = 'firewallAndTrafficShaping'
      @_hash
    end

    def initialize(name = nil,
                   vlan_tagging = nil,
                   content_filtering = nil,
                   bonjour_forwarding = nil,
                   bandwidth = nil,
                   splash_auth_settings = nil,
                   scheduling = nil,
                   firewall_and_traffic_shaping = nil)
      @vlan_tagging = vlan_tagging
      @content_filtering = content_filtering
      @bonjour_forwarding = bonjour_forwarding
      @bandwidth = bandwidth
      @splash_auth_settings = splash_auth_settings
      @name = name
      @scheduling = scheduling
      @firewall_and_traffic_shaping = firewall_and_traffic_shaping
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      vlan_tagging = VlanTaggingModel.from_hash(hash['vlanTagging']) if
        hash['vlanTagging']
      if hash['contentFiltering']
        content_filtering = ContentFilteringModel.from_hash(hash['contentFiltering'])
      end
      if hash['bonjourForwarding']
        bonjour_forwarding = BonjourForwardingModel.from_hash(hash['bonjourForwarding'])
      end
      bandwidth = BandwidthModel.from_hash(hash['bandwidth']) if
        hash['bandwidth']
      splash_auth_settings = hash['splashAuthSettings']
      scheduling = SchedulingModel.from_hash(hash['scheduling']) if
        hash['scheduling']
      if hash['firewallAndTrafficShaping']
        firewall_and_traffic_shaping = FirewallAndTrafficShapingModel.from_hash(hash['firewallAndTrafficShaping'])
      end

      # Create object from extracted values.
      CreateNetworkGroupPolicyModel.new(name,
                                        vlan_tagging,
                                        content_filtering,
                                        bonjour_forwarding,
                                        bandwidth,
                                        splash_auth_settings,
                                        scheduling,
                                        firewall_and_traffic_shaping)
    end
  end
end
