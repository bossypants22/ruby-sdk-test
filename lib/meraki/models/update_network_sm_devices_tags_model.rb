# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmDevicesTagsModel Model.
  class UpdateNetworkSmDevicesTagsModel < BaseModel
    # One of add, delete, or update. Only devices that have been modified will
    # be returned.
    # @return [String]
    attr_accessor :update_action

    # The serials of the devices to be modified.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be modified.
    # @return [String]
    attr_accessor :scope

    # The ids of the devices to be modified.
    # @return [String]
    attr_accessor :ids

    # The wifiMacs of the devices to be modified.
    # @return [String]
    attr_accessor :wifi_macs

    # The tags to be added, deleted, or updated.
    # @return [String]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['update_action'] = 'updateAction'
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['ids'] = 'ids'
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(update_action = nil,
                   tags = nil,
                   serials = nil,
                   scope = nil,
                   ids = nil,
                   wifi_macs = nil)
      @update_action = update_action
      @serials = serials
      @scope = scope
      @ids = ids
      @wifi_macs = wifi_macs
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      update_action = hash['updateAction']
      tags = hash['tags']
      serials = hash['serials']
      scope = hash['scope']
      ids = hash['ids']
      wifi_macs = hash['wifiMacs']

      # Create object from extracted values.
      UpdateNetworkSmDevicesTagsModel.new(update_action,
                                          tags,
                                          serials,
                                          scope,
                                          ids,
                                          wifi_macs)
    end
  end
end
