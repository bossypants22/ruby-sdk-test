# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule3Model Model.
  class Rule3Model < BaseModel
    # Either of the following: 'tcp', 'udp', 'icmp-ping' or 'any'
    # @return [String]
    attr_accessor :protocol

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2')
    # @return [String]
    attr_accessor :uplink

    # An array of ports or port ranges that will be forwarded to the host on the
    # LAN
    # @return [String]
    attr_accessor :destination_ports

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges, or 'any'
    # @return [String]
    attr_accessor :allowed_ips

    # A descriptive name for the rule
    # @return [String]
    attr_accessor :name

    # The ports this mapping will provide access on, and the remote IPs that
    # will be allowed access to the resource
    # @return [List of Object]
    attr_accessor :allowed_inbound

    # The IP address that will be used to access the internal resource from the
    # WAN
    # @return [String]
    attr_accessor :public_ip

    # The IP address of the server or device that hosts the internal resource
    # that you wish to make available on the WAN
    # @return [String]
    attr_accessor :lan_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['protocol'] = 'protocol'
      @_hash['uplink'] = 'uplink'
      @_hash['destination_ports'] = 'destinationPorts'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash['name'] = 'name'
      @_hash['allowed_inbound'] = 'allowedInbound'
      @_hash['public_ip'] = 'publicIp'
      @_hash['lan_ip'] = 'lanIp'
      @_hash
    end

    def initialize(protocol = nil,
                   uplink = nil,
                   destination_ports = nil,
                   allowed_ips = nil,
                   name = nil,
                   allowed_inbound = nil,
                   public_ip = nil,
                   lan_ip = nil)
      @protocol = protocol
      @uplink = uplink
      @destination_ports = destination_ports
      @allowed_ips = allowed_ips
      @name = name
      @allowed_inbound = allowed_inbound
      @public_ip = public_ip
      @lan_ip = lan_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      protocol = hash['protocol']
      uplink = hash['uplink']
      destination_ports = hash['destinationPorts']
      allowed_ips = hash['allowedIps']
      name = hash['name']
      allowed_inbound = hash['allowedInbound']
      public_ip = hash['publicIp']
      lan_ip = hash['lanIp']

      # Create object from extracted values.
      Rule3Model.new(protocol,
                     uplink,
                     destination_ports,
                     allowed_ips,
                     name,
                     allowed_inbound,
                     public_ip,
                     lan_ip)
    end
  end
end
