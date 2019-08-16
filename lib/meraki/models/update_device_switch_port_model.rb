# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateDeviceSwitchPortModel Model.
  class UpdateDeviceSwitchPortModel < BaseModel
    # The state of the STP guard ("disabled", "Root guard", "BPDU guard", "Loop
    # guard")
    # @return [String]
    attr_accessor :stp_guard

    # The ID of the port schedule. A value of null will clear the port schedule.
    # @return [String]
    attr_accessor :port_schedule_id

    # The rapid spanning tree protocol status
    # @return [Boolean]
    attr_accessor :rstp_enabled

    # The isolation status of the switch port
    # @return [Boolean]
    attr_accessor :isolation_enabled

    # The type of the switch port ("access" or "trunk")
    # @return [String]
    attr_accessor :type

    # The status of the switch port
    # @return [Boolean]
    attr_accessor :enabled

    # The tags of the switch port
    # @return [String]
    attr_accessor :tags

    # The VLANs allowed on the switch port. Only applicable to trunk ports.
    # @return [String]
    attr_accessor :allowed_vlans

    # The number of the access policy of the switch port. Only applicable to
    # access ports.
    # @return [Integer]
    attr_accessor :access_policy_number

    # The link speed for the switch port
    # @return [String]
    attr_accessor :link_negotiation

    # The VLAN of the switch port
    # @return [Integer]
    attr_accessor :vlan

    # The voice VLAN of the switch port. Only applicable to access ports.
    # @return [Integer]
    attr_accessor :voice_vlan

    # The PoE status of the switch port
    # @return [Boolean]
    attr_accessor :poe_enabled

    # The name of the switch port
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['stp_guard'] = 'stpGuard'
      @_hash['port_schedule_id'] = 'portScheduleId'
      @_hash['rstp_enabled'] = 'rstpEnabled'
      @_hash['isolation_enabled'] = 'isolationEnabled'
      @_hash['type'] = 'type'
      @_hash['enabled'] = 'enabled'
      @_hash['tags'] = 'tags'
      @_hash['allowed_vlans'] = 'allowedVlans'
      @_hash['access_policy_number'] = 'accessPolicyNumber'
      @_hash['link_negotiation'] = 'linkNegotiation'
      @_hash['vlan'] = 'vlan'
      @_hash['voice_vlan'] = 'voiceVlan'
      @_hash['poe_enabled'] = 'poeEnabled'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(stp_guard = nil,
                   port_schedule_id = nil,
                   rstp_enabled = nil,
                   isolation_enabled = nil,
                   type = nil,
                   enabled = nil,
                   tags = nil,
                   allowed_vlans = nil,
                   access_policy_number = nil,
                   link_negotiation = nil,
                   vlan = nil,
                   voice_vlan = nil,
                   poe_enabled = nil,
                   name = nil)
      @stp_guard = stp_guard
      @port_schedule_id = port_schedule_id
      @rstp_enabled = rstp_enabled
      @isolation_enabled = isolation_enabled
      @type = type
      @enabled = enabled
      @tags = tags
      @allowed_vlans = allowed_vlans
      @access_policy_number = access_policy_number
      @link_negotiation = link_negotiation
      @vlan = vlan
      @voice_vlan = voice_vlan
      @poe_enabled = poe_enabled
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      stp_guard = hash['stpGuard']
      port_schedule_id = hash['portScheduleId']
      rstp_enabled = hash['rstpEnabled']
      isolation_enabled = hash['isolationEnabled']
      type = hash['type']
      enabled = hash['enabled']
      tags = hash['tags']
      allowed_vlans = hash['allowedVlans']
      access_policy_number = hash['accessPolicyNumber']
      link_negotiation = hash['linkNegotiation']
      vlan = hash['vlan']
      voice_vlan = hash['voiceVlan']
      poe_enabled = hash['poeEnabled']
      name = hash['name']

      # Create object from extracted values.
      UpdateDeviceSwitchPortModel.new(stp_guard,
                                      port_schedule_id,
                                      rstp_enabled,
                                      isolation_enabled,
                                      type,
                                      enabled,
                                      tags,
                                      allowed_vlans,
                                      access_policy_number,
                                      link_negotiation,
                                      vlan,
                                      voice_vlan,
                                      poe_enabled,
                                      name)
    end
  end
end
