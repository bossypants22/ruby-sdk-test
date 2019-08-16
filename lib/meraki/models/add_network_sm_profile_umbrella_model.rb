# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AddNetworkSmProfileUmbrellaModel Model.
  class AddNetworkSmProfileUmbrellaModel < BaseModel
    # Whether the certificate should be attached to this profile (one of true,
    # false). False by default
    # @return [Boolean]
    attr_accessor :uses_cert

    # The bundle ID of the application, defaults to com.cisco.ciscosecurity.app
    # @return [String]
    attr_accessor :app_bundle_identifier

    # The bundle ID of the provider, defaults to
    # com.cisco.ciscosecurity.app.CiscoUmbrella
    # @return [String]
    attr_accessor :provider_bundle_identifier

    # The specific ProviderConfiguration to be passed to the filtering
    # framework, in the form of an array of objects (as JSON).
    # @return [List of ProviderConfigurationModel]
    attr_accessor :provider_configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uses_cert'] = 'usesCert'
      @_hash['app_bundle_identifier'] = 'AppBundleIdentifier'
      @_hash['provider_bundle_identifier'] = 'ProviderBundleIdentifier'
      @_hash['provider_configuration'] = 'ProviderConfiguration'
      @_hash
    end

    def initialize(provider_configuration = nil,
                   uses_cert = nil,
                   app_bundle_identifier = nil,
                   provider_bundle_identifier = nil)
      @uses_cert = uses_cert
      @app_bundle_identifier = app_bundle_identifier
      @provider_bundle_identifier = provider_bundle_identifier
      @provider_configuration = provider_configuration
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      provider_configuration = nil
      unless hash['ProviderConfiguration'].nil?
        provider_configuration = []
        hash['ProviderConfiguration'].each do |structure|
          provider_configuration << (ProviderConfigurationModel.from_hash(structure) if structure)
        end
      end
      uses_cert = hash['usesCert']
      app_bundle_identifier = hash['AppBundleIdentifier']
      provider_bundle_identifier = hash['ProviderBundleIdentifier']

      # Create object from extracted values.
      AddNetworkSmProfileUmbrellaModel.new(provider_configuration,
                                           uses_cert,
                                           app_bundle_identifier,
                                           provider_bundle_identifier)
    end
  end
end
