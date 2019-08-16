# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # VendorConfigModel Model.
  class VendorConfigModel < BaseModel
    # The type for an object in VendorConfig. Can be one of 'manual_string',
    # 'manual_int', 'manual_boolean', 'manual_choice', 'manual_multiselect',
    # 'manual_list', 'auto_username', 'auto_email', 'auto_mac_address',
    # 'auto_serial_number', 'auto_notes' or 'auto_name'
    # @return [String]
    attr_accessor :type

    # The value for an object in VendorConfig
    # @return [String]
    attr_accessor :value

    # The key for an object in VendorConfig
    # @return [String]
    attr_accessor :key

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash['key'] = 'key'
      @_hash
    end

    def initialize(type = nil,
                   key = nil,
                   value = nil)
      @type = type
      @value = value
      @key = key
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      key = hash['key']
      value = hash['value']

      # Create object from extracted values.
      VendorConfigModel.new(type,
                            key,
                            value)
    end
  end
end
