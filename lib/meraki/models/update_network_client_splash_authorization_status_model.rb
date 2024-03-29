# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkClientSplashAuthorizationStatusModel Model.
  class UpdateNetworkClientSplashAuthorizationStatusModel < BaseModel
    # The target SSIDs. For each SSID where isAuthorized is true, the expiration
    # time will automatically be set according to the SSID's splash frequency.
    # @return [SsidsModel]
    attr_accessor :ssids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ssids'] = 'ssids'
      @_hash
    end

    def initialize(ssids = nil)
      @ssids = ssids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ssids = SsidsModel.from_hash(hash['ssids']) if hash['ssids']

      # Create object from extracted values.
      UpdateNetworkClientSplashAuthorizationStatusModel.new(ssids)
    end
  end
end
