# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ClaimOrganizationModel Model.
  class ClaimOrganizationModel < BaseModel
    # The order number that should be claimed
    # @return [String]
    attr_accessor :order

    # The serial of the device that should be claimed
    # @return [String]
    attr_accessor :serial

    # The license key that should be claimed
    # @return [String]
    attr_accessor :license_key

    # Either 'renew' or 'addDevices'. 'addDevices' will increase the license
    # limit, while 'renew' will extend the amount of time until expiration. This
    # parameter is required when claiming by licenseKey. Please see <a
    # target='_blank'
    # href='https://documentation.meraki.com/zGeneral_Administration/Licensing/A
    # dding_an_Enterprise_license_to_an_existing_Dashboard_account'>this
    # article</a> for more information.
    # @return [String]
    attr_accessor :license_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['order'] = 'order'
      @_hash['serial'] = 'serial'
      @_hash['license_key'] = 'licenseKey'
      @_hash['license_mode'] = 'licenseMode'
      @_hash
    end

    def initialize(order = nil,
                   serial = nil,
                   license_key = nil,
                   license_mode = nil)
      @order = order
      @serial = serial
      @license_key = license_key
      @license_mode = license_mode
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      order = hash['order']
      serial = hash['serial']
      license_key = hash['licenseKey']
      license_mode = hash['licenseMode']

      # Create object from extracted values.
      ClaimOrganizationModel.new(order,
                                 serial,
                                 license_key,
                                 license_mode)
    end
  end
end
