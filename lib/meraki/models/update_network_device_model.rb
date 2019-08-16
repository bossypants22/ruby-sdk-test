# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkDeviceModel Model.
  class UpdateNetworkDeviceModel < BaseModel
    # Whether or not to set the latitude and longitude of a device based on the
    # new address. Only applies when lat and lng are not specified.
    # @return [Boolean]
    attr_accessor :move_map_marker

    # The ID of a switch profile to bind to the device (for available switch
    # profiles, see the 'Switch Profiles' endpoint). Use null to unbind the
    # switch device from the current profile. For a device to be bindable to a
    # switch profile, it must (1) be a switch, and (2) belong to a network that
    # is bound to a configuration template.
    # @return [String]
    attr_accessor :switch_profile_id

    # The address of a device
    # @return [String]
    attr_accessor :address

    # The notes for the device. String. Limited to 255 characters.
    # @return [String]
    attr_accessor :notes

    # The longitude of a device
    # @return [Float]
    attr_accessor :lng

    # The name of a device
    # @return [String]
    attr_accessor :name

    # The latitude of a device
    # @return [Float]
    attr_accessor :lat

    # The tags of a device
    # @return [String]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['move_map_marker'] = 'moveMapMarker'
      @_hash['switch_profile_id'] = 'switchProfileId'
      @_hash['address'] = 'address'
      @_hash['notes'] = 'notes'
      @_hash['lng'] = 'lng'
      @_hash['name'] = 'name'
      @_hash['lat'] = 'lat'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(move_map_marker = nil,
                   switch_profile_id = nil,
                   address = nil,
                   notes = nil,
                   lng = nil,
                   name = nil,
                   lat = nil,
                   tags = nil)
      @move_map_marker = move_map_marker
      @switch_profile_id = switch_profile_id
      @address = address
      @notes = notes
      @lng = lng
      @name = name
      @lat = lat
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      move_map_marker = hash['moveMapMarker']
      switch_profile_id = hash['switchProfileId']
      address = hash['address']
      notes = hash['notes']
      lng = hash['lng']
      name = hash['name']
      lat = hash['lat']
      tags = hash['tags']

      # Create object from extracted values.
      UpdateNetworkDeviceModel.new(move_map_marker,
                                   switch_profile_id,
                                   address,
                                   notes,
                                   lng,
                                   name,
                                   lat,
                                   tags)
    end
  end
end
