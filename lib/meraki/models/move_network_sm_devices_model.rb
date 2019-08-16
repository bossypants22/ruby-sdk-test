# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MoveNetworkSmDevicesModel Model.
  class MoveNetworkSmDevicesModel < BaseModel
    # The serials of the devices to be moved.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be moved.
    # @return [String]
    attr_accessor :scope

    # The ids of the devices to be moved.
    # @return [String]
    attr_accessor :ids

    # The new network to which the devices will be moved.
    # @return [String]
    attr_accessor :new_network

    # The wifiMacs of the devices to be moved.
    # @return [String]
    attr_accessor :wifi_macs

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['ids'] = 'ids'
      @_hash['new_network'] = 'newNetwork'
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash
    end

    def initialize(new_network = nil,
                   serials = nil,
                   scope = nil,
                   ids = nil,
                   wifi_macs = nil)
      @serials = serials
      @scope = scope
      @ids = ids
      @new_network = new_network
      @wifi_macs = wifi_macs
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      new_network = hash['newNetwork']
      serials = hash['serials']
      scope = hash['scope']
      ids = hash['ids']
      wifi_macs = hash['wifiMacs']

      # Create object from extracted values.
      MoveNetworkSmDevicesModel.new(new_network,
                                    serials,
                                    scope,
                                    ids,
                                    wifi_macs)
    end
  end
end
