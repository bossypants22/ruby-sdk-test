# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkDeviceManagementInterfaceSettingsModel Model.
  class UpdateNetworkDeviceManagementInterfaceSettingsModel < BaseModel
    # WAN 2 settings (only for MX devices)
    # @return [Wan2Model]
    attr_accessor :wan2

    # WAN 1 settings
    # @return [Wan1Model]
    attr_accessor :wan1

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wan2'] = 'wan2'
      @_hash['wan1'] = 'wan1'
      @_hash
    end

    def initialize(wan2 = nil,
                   wan1 = nil)
      @wan2 = wan2
      @wan1 = wan1
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wan2 = Wan2Model.from_hash(hash['wan2']) if hash['wan2']
      wan1 = Wan1Model.from_hash(hash['wan1']) if hash['wan1']

      # Create object from extracted values.
      UpdateNetworkDeviceManagementInterfaceSettingsModel.new(wan2,
                                                              wan1)
    end
  end
end
