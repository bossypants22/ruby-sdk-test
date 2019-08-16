# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule4Model Model.
  class Rule4Model < BaseModel
    # An object describing the bandwidth settings for your rule.
    # @return [PerClientBandwidthLimitsModel]
    attr_accessor :per_client_bandwidth_limits

    # The PCP tag applied by your rule. Can be 0 (lowest priority) through 7
    # (highest priority).
    #     null means 'Do not set PCP tag'.
    # @return [Integer]
    attr_accessor :pcp_tag_value

    # The DSCP tag applied by your rule. null means 'Do not change DSCP tag'.
    #     For a list of possible tag values, use the
    # trafficShaping/dscpTaggingOptions endpoint.
    # @return [Integer]
    attr_accessor :dscp_tag_value

    # A list of objects describing the definitions of your traffic shaping rule.
    # At least one definition is required.
    # @return [List of DefinitionModel]
    attr_accessor :definitions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['per_client_bandwidth_limits'] = 'perClientBandwidthLimits'
      @_hash['pcp_tag_value'] = 'pcpTagValue'
      @_hash['dscp_tag_value'] = 'dscpTagValue'
      @_hash['definitions'] = 'definitions'
      @_hash
    end

    def initialize(definitions = nil,
                   per_client_bandwidth_limits = nil,
                   pcp_tag_value = nil,
                   dscp_tag_value = nil)
      @per_client_bandwidth_limits = per_client_bandwidth_limits
      @pcp_tag_value = pcp_tag_value
      @dscp_tag_value = dscp_tag_value
      @definitions = definitions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      definitions = nil
      unless hash['definitions'].nil?
        definitions = []
        hash['definitions'].each do |structure|
          definitions << (DefinitionModel.from_hash(structure) if structure)
        end
      end
      if hash['perClientBandwidthLimits']
        per_client_bandwidth_limits = PerClientBandwidthLimitsModel.from_hash(hash['perClientBandwidthLimits'])
      end
      pcp_tag_value = hash['pcpTagValue']
      dscp_tag_value = hash['dscpTagValue']

      # Create object from extracted values.
      Rule4Model.new(definitions,
                     per_client_bandwidth_limits,
                     pcp_tag_value,
                     dscp_tag_value)
    end
  end
end
