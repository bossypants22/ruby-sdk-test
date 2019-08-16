# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule7Model Model.
  class Rule7Model < BaseModel
    # Comma-separated list of source IP address(es) (in IP or CIDR notation), or
    # 'any' (note: FQDN not supported for source addresses)
    # @return [String]
    attr_accessor :src_cidr

    # The type of protocol (must be 'tcp', 'udp', 'icmp' or 'any')
    # @return [String]
    attr_accessor :protocol

    # Log this rule to syslog (true or false, boolean value) - only applicable
    # if a syslog has been configured (optional)
    # @return [Boolean]
    attr_accessor :syslog_enabled

    # Comma-separated list of destination port(s) (integer in the range
    # 1-65535), or 'any'
    # @return [String]
    attr_accessor :dest_port

    # Description of the rule (optional)
    # @return [String]
    attr_accessor :comment

    # Comma-separated list of source port(s) (integer in the range 1-65535), or
    # 'any'
    # @return [String]
    attr_accessor :src_port

    # Comma-separated list of destination IP address(es) (in IP or CIDR
    # notation), fully-qualified domain names (FQDN) or 'any'
    # @return [String]
    attr_accessor :dest_cidr

    # 'allow' or 'deny' traffic specified by this rule
    # @return [String]
    attr_accessor :policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['src_cidr'] = 'srcCidr'
      @_hash['protocol'] = 'protocol'
      @_hash['syslog_enabled'] = 'syslogEnabled'
      @_hash['dest_port'] = 'destPort'
      @_hash['comment'] = 'comment'
      @_hash['src_port'] = 'srcPort'
      @_hash['dest_cidr'] = 'destCidr'
      @_hash['policy'] = 'policy'
      @_hash
    end

    def initialize(src_cidr = nil,
                   protocol = nil,
                   dest_cidr = nil,
                   policy = nil,
                   syslog_enabled = nil,
                   dest_port = nil,
                   comment = nil,
                   src_port = nil)
      @src_cidr = src_cidr
      @protocol = protocol
      @syslog_enabled = syslog_enabled
      @dest_port = dest_port
      @comment = comment
      @src_port = src_port
      @dest_cidr = dest_cidr
      @policy = policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      src_cidr = hash['srcCidr']
      protocol = hash['protocol']
      dest_cidr = hash['destCidr']
      policy = hash['policy']
      syslog_enabled = hash['syslogEnabled']
      dest_port = hash['destPort']
      comment = hash['comment']
      src_port = hash['srcPort']

      # Create object from extracted values.
      Rule7Model.new(src_cidr,
                     protocol,
                     dest_cidr,
                     policy,
                     syslog_enabled,
                     dest_port,
                     comment,
                     src_port)
    end
  end
end
