# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The new fields of the device. Each field of this object is optional.
  class DeviceFieldsModel < BaseModel
    # New notes for the device
    # @return [String]
    attr_accessor :notes

    # New name for the device
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['notes'] = 'notes'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(notes = nil,
                   name = nil)
      @notes = notes
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      notes = hash['notes']
      name = hash['name']

      # Create object from extracted values.
      DeviceFieldsModel.new(notes,
                            name)
    end
  end
end
