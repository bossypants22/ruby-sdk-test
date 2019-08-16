# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # LicenseModel Model.
  class LicenseModel < BaseModel
    # Either 'renew' or 'addDevices'. 'addDevices' will increase the license
    # limit, while 'renew' will extend the amount of time until expiration.
    # Please see <a target='_blank'
    # href='https://documentation.meraki.com/zGeneral_Administration/Licensing/A
    # dding_an_Enterprise_license_to_an_existing_Dashboard_account'>this
    # article</a> for more information.
    # @return [Mode1Enum]
    attr_accessor :mode

    # The key of the license
    # @return [String]
    attr_accessor :key

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['key'] = 'key'
      @_hash
    end

    def initialize(mode = nil,
                   key = nil)
      @mode = mode
      @key = key
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash['mode']
      key = hash['key']

      # Create object from extracted values.
      LicenseModel.new(mode,
                       key)
    end
  end
end
