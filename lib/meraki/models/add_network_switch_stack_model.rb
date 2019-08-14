# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AddNetworkSwitchStackModel Model.
  class AddNetworkSwitchStackModel < BaseModel
    # The serial of the switch to be added
    # @return [String]
    attr_accessor :serial

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serial'] = 'serial'
      @_hash
    end

    def initialize(serial = nil)
      @serial = serial
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serial = hash['serial']

      # Create object from extracted values.
      AddNetworkSwitchStackModel.new(serial)
    end
  end
end
