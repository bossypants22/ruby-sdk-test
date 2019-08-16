# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CheckinNetworkSmDevicesModel Model.
  class CheckinNetworkSmDevicesModel < BaseModel
    # The serials of the devices to be checked-in.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be checked-in.
    # @return [String]
    attr_accessor :scope

    # The ids of the devices to be checked-in.
    # @return [String]
    attr_accessor :ids

    # The wifiMacs of the devices to be checked-in.
    # @return [String]
    attr_accessor :wifi_macs

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['ids'] = 'ids'
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash
    end

    def initialize(serials = nil,
                   scope = nil,
                   ids = nil,
                   wifi_macs = nil)
      @serials = serials
      @scope = scope
      @ids = ids
      @wifi_macs = wifi_macs
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serials = hash['serials']
      scope = hash['scope']
      ids = hash['ids']
      wifi_macs = hash['wifiMacs']

      # Create object from extracted values.
      CheckinNetworkSmDevicesModel.new(serials,
                                       scope,
                                       ids,
                                       wifi_macs)
    end
  end
end
