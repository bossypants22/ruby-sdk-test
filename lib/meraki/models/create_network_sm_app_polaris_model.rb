# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSmAppPolarisModel Model.
  class CreateNetworkSmAppPolarisModel < BaseModel
    # (optional) Whether or not the app should use VPP by device assignment (one
    # of true or false). False by default.
    # @return [Boolean]
    attr_accessor :uses_vpp

    # (optional) Whether or not SM should auto-install this app (one of true or
    # false). False by default.
    # @return [Boolean]
    attr_accessor :prevent_auto_install

    # The manifest URL of the Polaris app (one of manifestUrl and bundleId must
    # be provided)
    # @return [String]
    attr_accessor :manifest_url

    # The scope (one of all, none, automatic, withAny, withAll, withoutAny, or
    # withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # The bundleId of the Polaris app (one of manifestUrl and bundleId must be
    # provided)
    # @return [String]
    attr_accessor :bundle_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uses_vpp'] = 'usesVPP'
      @_hash['prevent_auto_install'] = 'preventAutoInstall'
      @_hash['manifest_url'] = 'manifestUrl'
      @_hash['scope'] = 'scope'
      @_hash['bundle_id'] = 'bundleId'
      @_hash
    end

    def initialize(scope = nil,
                   uses_vpp = nil,
                   prevent_auto_install = nil,
                   manifest_url = nil,
                   bundle_id = nil)
      @uses_vpp = uses_vpp
      @prevent_auto_install = prevent_auto_install
      @manifest_url = manifest_url
      @scope = scope
      @bundle_id = bundle_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scope = hash['scope']
      uses_vpp = hash['usesVPP']
      prevent_auto_install = hash['preventAutoInstall']
      manifest_url = hash['manifestUrl']
      bundle_id = hash['bundleId']

      # Create object from extracted values.
      CreateNetworkSmAppPolarisModel.new(scope,
                                         uses_vpp,
                                         prevent_auto_install,
                                         manifest_url,
                                         bundle_id)
    end
  end
end
