# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmAppPolarisModel Model.
  class UpdateNetworkSmAppPolarisModel < BaseModel
    # optional: Whether or not the app should use VPP by device assignment (one
    # of true or false)
    # @return [Boolean]
    attr_accessor :uses_vpp

    # optional: Whether or not SM should auto-install this app (one of true or
    # false)
    # @return [Boolean]
    attr_accessor :prevent_auto_install

    # optional: The scope (one of all, none, automatic, withAny, withAll,
    # withoutAny, or withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uses_vpp'] = 'usesVPP'
      @_hash['prevent_auto_install'] = 'preventAutoInstall'
      @_hash['scope'] = 'scope'
      @_hash
    end

    def initialize(uses_vpp = nil,
                   prevent_auto_install = nil,
                   scope = nil)
      @uses_vpp = uses_vpp
      @prevent_auto_install = prevent_auto_install
      @scope = scope
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uses_vpp = hash['usesVPP']
      prevent_auto_install = hash['preventAutoInstall']
      scope = hash['scope']

      # Create object from extracted values.
      UpdateNetworkSmAppPolarisModel.new(uses_vpp,
                                         prevent_auto_install,
                                         scope)
    end
  end
end
