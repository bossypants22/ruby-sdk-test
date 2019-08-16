# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AlertModel Model.
  class AlertModel < BaseModel
    # A hash of destinations for this specific alert. Keys include: emails: A
    # list of emails that will recieve information about the alert, allAdmins:
    # If true, then all network admins will receive emails, and snmp: If true,
    # then an SNMP trap will be sent if there is an SNMP trap server configured
    # for this network.
    # @return [Object]
    attr_accessor :alert_destinations

    # A hash of specific configuration data for the alert. Only filters specific
    # to the alert will be updated.
    # @return [Object]
    attr_accessor :filters

    # The type of alert
    # @return [String]
    attr_accessor :type

    # A boolean depicting if the alert is turned on or off
    # @return [Boolean]
    attr_accessor :enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['alert_destinations'] = 'alertDestinations'
      @_hash['filters'] = 'filters'
      @_hash['type'] = 'type'
      @_hash['enabled'] = 'enabled'
      @_hash
    end

    def initialize(alert_destinations = nil,
                   filters = nil,
                   type = nil,
                   enabled = nil)
      @alert_destinations = alert_destinations
      @filters = filters
      @type = type
      @enabled = enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      alert_destinations = hash['alertDestinations']
      filters = hash['filters']
      type = hash['type']
      enabled = hash['enabled']

      # Create object from extracted values.
      AlertModel.new(alert_destinations,
                     filters,
                     type,
                     enabled)
    end
  end
end
