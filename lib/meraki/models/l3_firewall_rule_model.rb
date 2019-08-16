# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # L3FirewallRuleModel Model.
  class L3FirewallRuleModel < BaseModel
    # The type of protocol (must be 'tcp', 'udp', 'icmp' or 'any')
    # @return [String]
    attr_accessor :protocol

    # Destination port (integer in the range 1-65535), a port range (e.g.
    # 8080-9090), or 'any'
    # @return [String]
    attr_accessor :dest_port

    # Description of the rule (optional)
    # @return [String]
    attr_accessor :comment

    # Destination IP address (in IP or CIDR notation), a fully-qualified domain
    # name (FQDN, if your network supports it) or 'any'.
    # @return [String]
    attr_accessor :dest_cidr

    # 'allow' or 'deny' traffic specified by this rule
    # @return [String]
    attr_accessor :policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['protocol'] = 'protocol'
      @_hash['dest_port'] = 'destPort'
      @_hash['comment'] = 'comment'
      @_hash['dest_cidr'] = 'destCidr'
      @_hash['policy'] = 'policy'
      @_hash
    end

    def initialize(protocol = nil,
                   dest_cidr = nil,
                   policy = nil,
                   dest_port = nil,
                   comment = nil)
      @protocol = protocol
      @dest_port = dest_port
      @comment = comment
      @dest_cidr = dest_cidr
      @policy = policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      protocol = hash['protocol']
      dest_cidr = hash['destCidr']
      policy = hash['policy']
      dest_port = hash['destPort']
      comment = hash['comment']

      # Create object from extracted values.
      L3FirewallRuleModel.new(protocol,
                              dest_cidr,
                              policy,
                              dest_port,
                              comment)
    end
  end
end
