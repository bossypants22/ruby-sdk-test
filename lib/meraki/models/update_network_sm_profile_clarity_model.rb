# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmProfileClarityModel Model.
  class UpdateNetworkSmProfileClarityModel < BaseModel
    # optional: The new bundle ID of the application
    # @return [String]
    attr_accessor :plugin_bundle_id

    # optional: Whether or not to enable socket traffic filtering (one of true,
    # false).
    # @return [Boolean]
    attr_accessor :filter_sockets

    # optional: The specific VendorConfig to be passed to the filtering
    # framework, in the form of an array of objects (as JSON).
    # @return [List of VendorConfigModel]
    attr_accessor :vendor_config

    # optional: A new scope for the profile (one of all, none, withAny, withAll,
    # withoutAny, or withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # optional: A new name for the profile
    # @return [String]
    attr_accessor :name

    # optional: Whether or not to enable browser traffic filtering (one of true,
    # false).
    # @return [Boolean]
    attr_accessor :filter_browsers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plugin_bundle_id'] = 'PluginBundleID'
      @_hash['filter_sockets'] = 'FilterSockets'
      @_hash['vendor_config'] = 'VendorConfig'
      @_hash['scope'] = 'scope'
      @_hash['name'] = 'name'
      @_hash['filter_browsers'] = 'FilterBrowsers'
      @_hash
    end

    def initialize(plugin_bundle_id = nil,
                   filter_sockets = nil,
                   vendor_config = nil,
                   scope = nil,
                   name = nil,
                   filter_browsers = nil)
      @plugin_bundle_id = plugin_bundle_id
      @filter_sockets = filter_sockets
      @vendor_config = vendor_config
      @scope = scope
      @name = name
      @filter_browsers = filter_browsers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plugin_bundle_id = hash['PluginBundleID']
      filter_sockets = hash['FilterSockets']
      # Parameter is an array, so we need to iterate through it
      vendor_config = nil
      unless hash['VendorConfig'].nil?
        vendor_config = []
        hash['VendorConfig'].each do |structure|
          vendor_config << (VendorConfigModel.from_hash(structure) if structure)
        end
      end
      scope = hash['scope']
      name = hash['name']
      filter_browsers = hash['FilterBrowsers']

      # Create object from extracted values.
      UpdateNetworkSmProfileClarityModel.new(plugin_bundle_id,
                                             filter_sockets,
                                             vendor_config,
                                             scope,
                                             name,
                                             filter_browsers)
    end
  end
end
