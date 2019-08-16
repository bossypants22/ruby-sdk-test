# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule5Model Model.
  class Rule5Model < BaseModel
    # Type of the L7 rule. One of: 'application', 'applicationCategory', 'host',
    # 'port', 'ipRange'
    # @return [Type4Enum]
    attr_accessor :type

    # The 'value' of what you want to block. Format of 'value' varies depending
    # on type of the rule. See sample request. The application categories and
    # application ids can be retrieved from the the 'MX L7 application
    # categories' endpoint. The countries follow the two-letter ISO 3166-1
    # alpha-2 format.
    # @return [String]
    attr_accessor :value

    # 'Deny' traffic specified by this rule
    # @return [Policy1Enum]
    attr_accessor :policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash['policy'] = 'policy'
      @_hash
    end

    def initialize(type = nil,
                   value = nil,
                   policy = nil)
      @type = type
      @value = value
      @policy = policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      value = hash['value']
      policy = hash['policy']

      # Create object from extracted values.
      Rule5Model.new(type,
                     value,
                     policy)
    end
  end
end
