# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkHttpServersWebhookTestsModel Model.
  class CreateNetworkHttpServersWebhookTestsModel < BaseModel
    # The URL where the test webhook will be sent
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash
    end

    def initialize(url = nil,
                   additional_properties = {})
      @url = url

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateNetworkHttpServersWebhookTestsModel.new(url,
                                                    hash)
    end
  end
end