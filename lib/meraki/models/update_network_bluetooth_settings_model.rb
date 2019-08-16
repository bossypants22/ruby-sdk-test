# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkBluetoothSettingsModel Model.
  class UpdateNetworkBluetoothSettingsModel < BaseModel
    # The major number to be used in the beacon identifier. Only valid in
    # 'Non-unique' mode.
    # @return [Integer]
    attr_accessor :major

    # The minor number to be used in the beacon identifier. Only valid in
    # 'Non-unique' mode.
    # @return [Integer]
    attr_accessor :minor

    # The way major and minor number should be assigned to nodes in the network.
    # ('Unique', 'Non-unique')
    # @return [String]
    attr_accessor :major_minor_assignment_mode

    # Whether APs will scan for Bluetooth enabled clients. (true, false)
    # @return [Boolean]
    attr_accessor :scanning_enabled

    # The UUID to be used in the beacon identifier.
    # @return [String]
    attr_accessor :uuid

    # Whether APs will advertise beacons. (true, false)
    # @return [Boolean]
    attr_accessor :advertising_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['major'] = 'major'
      @_hash['minor'] = 'minor'
      @_hash['major_minor_assignment_mode'] = 'majorMinorAssignmentMode'
      @_hash['scanning_enabled'] = 'scanningEnabled'
      @_hash['uuid'] = 'uuid'
      @_hash['advertising_enabled'] = 'advertisingEnabled'
      @_hash
    end

    def initialize(major = nil,
                   minor = nil,
                   major_minor_assignment_mode = nil,
                   scanning_enabled = nil,
                   uuid = nil,
                   advertising_enabled = nil)
      @major = major
      @minor = minor
      @major_minor_assignment_mode = major_minor_assignment_mode
      @scanning_enabled = scanning_enabled
      @uuid = uuid
      @advertising_enabled = advertising_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      major = hash['major']
      minor = hash['minor']
      major_minor_assignment_mode = hash['majorMinorAssignmentMode']
      scanning_enabled = hash['scanningEnabled']
      uuid = hash['uuid']
      advertising_enabled = hash['advertisingEnabled']

      # Create object from extracted values.
      UpdateNetworkBluetoothSettingsModel.new(major,
                                              minor,
                                              major_minor_assignment_mode,
                                              scanning_enabled,
                                              uuid,
                                              advertising_enabled)
    end
  end
end
