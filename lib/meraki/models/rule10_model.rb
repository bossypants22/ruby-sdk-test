# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule10Model Model.
  class Rule10Model < BaseModel
    # 'tcp' or 'udp'
    # @return [String]
    attr_accessor :protocol

    # An array of associated forwarding rules
    # @return [List of Object]
    attr_accessor :port_rules

    # Destination port of the forwarded traffic that will be sent from the MX to
    # the specified host on the LAN. If you simply wish to forward the traffic
    # without translating the port, this should be the same as the Public port
    # @return [String]
    attr_accessor :local_port

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2')
    # @return [String]
    attr_accessor :uplink

    # Remote IP addresses or ranges that are permitted to access the internal
    # resource via this port forwarding rule, or 'any'
    # @return [String]
    attr_accessor :allowed_ips

    # A description of the rule
    # @return [String]
    attr_accessor :name

    # Destination port of the traffic that is arriving on the WAN
    # @return [String]
    attr_accessor :public_port

    # Local IP address to which traffic will be forwarded
    # @return [String]
    attr_accessor :local_ip

    # The IP address that will be used to access the internal resource from the
    # WAN
    # @return [String]
    attr_accessor :public_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['protocol'] = 'protocol'
      @_hash['port_rules'] = 'portRules'
      @_hash['local_port'] = 'localPort'
      @_hash['uplink'] = 'uplink'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash['name'] = 'name'
      @_hash['public_port'] = 'publicPort'
      @_hash['local_ip'] = 'localIp'
      @_hash['public_ip'] = 'publicIp'
      @_hash
    end

    def initialize(protocol = nil,
                   port_rules = nil,
                   local_port = nil,
                   uplink = nil,
                   allowed_ips = nil,
                   name = nil,
                   public_port = nil,
                   local_ip = nil,
                   public_ip = nil)
      @protocol = protocol
      @port_rules = port_rules
      @local_port = local_port
      @uplink = uplink
      @allowed_ips = allowed_ips
      @name = name
      @public_port = public_port
      @local_ip = local_ip
      @public_ip = public_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      protocol = hash['protocol']
      port_rules = hash['portRules']
      local_port = hash['localPort']
      uplink = hash['uplink']
      allowed_ips = hash['allowedIps']
      name = hash['name']
      public_port = hash['publicPort']
      local_ip = hash['localIp']
      public_ip = hash['publicIp']

      # Create object from extracted values.
      Rule10Model.new(protocol,
                      port_rules,
                      local_port,
                      uplink,
                      allowed_ips,
                      name,
                      public_port,
                      local_ip,
                      public_ip)
    end
  end
end
