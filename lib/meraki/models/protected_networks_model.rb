# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Set the included/excluded networks from the intrusion engine (optional -
  # omitting will leave current config unchanged). This is available only in
  # 'passthrough' mode
  class ProtectedNetworksModel < BaseModel
    # list of IP addresses or subnets being protected (required if 'useDefault'
    # is false)
    # @return [List of String]
    attr_accessor :included_cidr

    # true/false whether to use special IPv4 addresses:
    # https://tools.ietf.org/html/rfc5735 (required). Default value is true if
    # none currently saved
    # @return [Boolean]
    attr_accessor :use_default

    # list of IP addresses or subnets being excluded from protection (required
    # if 'useDefault' is false)
    # @return [List of String]
    attr_accessor :excluded_cidr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['included_cidr'] = 'includedCidr'
      @_hash['use_default'] = 'useDefault'
      @_hash['excluded_cidr'] = 'excludedCidr'
      @_hash
    end

    def initialize(included_cidr = nil,
                   use_default = nil,
                   excluded_cidr = nil)
      @included_cidr = included_cidr
      @use_default = use_default
      @excluded_cidr = excluded_cidr
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      included_cidr = hash['includedCidr']
      use_default = hash['useDefault']
      excluded_cidr = hash['excludedCidr']

      # Create object from extracted values.
      ProtectedNetworksModel.new(included_cidr,
                                 use_default,
                                 excluded_cidr)
    end
  end
end
