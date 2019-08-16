# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ClaimOrganizationModel Model.
  class ClaimOrganizationModel < BaseModel
    # The serials of the devices that should be claimed
    # @return [List of String]
    attr_accessor :serials

    # The licenses that should be claimed
    # @return [List of LicenseModel]
    attr_accessor :licenses

    # The numbers of the orders that should be claimed
    # @return [List of String]
    attr_accessor :orders

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serials'] = 'serials'
      @_hash['licenses'] = 'licenses'
      @_hash['orders'] = 'orders'
      @_hash
    end

    def initialize(serials = nil,
                   licenses = nil,
                   orders = nil)
      @serials = serials
      @licenses = licenses
      @orders = orders
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serials = hash['serials']
      # Parameter is an array, so we need to iterate through it
      licenses = nil
      unless hash['licenses'].nil?
        licenses = []
        hash['licenses'].each do |structure|
          licenses << (LicenseModel.from_hash(structure) if structure)
        end
      end
      orders = hash['orders']

      # Create object from extracted values.
      ClaimOrganizationModel.new(serials,
                                 licenses,
                                 orders)
    end
  end
end
