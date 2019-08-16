# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkAlertSettingsModel Model.
  class UpdateNetworkAlertSettingsModel < BaseModel
    # Alert-specific configuration for each type. Only alerts that pertain to
    # the network can be updated.
    # @return [List of AlertModel]
    attr_accessor :alerts

    # The network_wide destinations for all alerts on the network.
    # @return [DefaultDestinationsModel]
    attr_accessor :default_destinations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['alerts'] = 'alerts'
      @_hash['default_destinations'] = 'defaultDestinations'
      @_hash
    end

    def initialize(alerts = nil,
                   default_destinations = nil)
      @alerts = alerts
      @default_destinations = default_destinations
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      alerts = nil
      unless hash['alerts'].nil?
        alerts = []
        hash['alerts'].each do |structure|
          alerts << (AlertModel.from_hash(structure) if structure)
        end
      end
      if hash['defaultDestinations']
        default_destinations = DefaultDestinationsModel.from_hash(hash['defaultDestinations'])
      end

      # Create object from extracted values.
      UpdateNetworkAlertSettingsModel.new(alerts,
                                          default_destinations)
    end
  end
end
