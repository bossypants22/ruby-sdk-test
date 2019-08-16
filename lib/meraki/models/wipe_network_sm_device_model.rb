# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WipeNetworkSmDeviceModel Model.
  class WipeNetworkSmDeviceModel < BaseModel
    # The pin number (a six digit value) for wiping a macOS device. Required
    # only for macOS devices.
    # @return [Integer]
    attr_accessor :pin

    # The serial of the device to be wiped.
    # @return [String]
    attr_accessor :serial

    # The wifiMac of the device to be wiped.
    # @return [String]
    attr_accessor :wifi_mac

    # The id of the device to be wiped.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pin'] = 'pin'
      @_hash['serial'] = 'serial'
      @_hash['wifi_mac'] = 'wifiMac'
      @_hash['id'] = 'id'
      @_hash
    end

    def initialize(pin = nil,
                   serial = nil,
                   wifi_mac = nil,
                   id = nil)
      @pin = pin
      @serial = serial
      @wifi_mac = wifi_mac
      @id = id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pin = hash['pin']
      serial = hash['serial']
      wifi_mac = hash['wifiMac']
      id = hash['id']

      # Create object from extracted values.
      WipeNetworkSmDeviceModel.new(pin,
                                   serial,
                                   wifi_mac,
                                   id)
    end
  end
end
