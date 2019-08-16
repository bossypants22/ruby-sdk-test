# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule1Model Model.
  class Rule1Model < BaseModel
    # TCP or UDP
    # @return [String]
    attr_accessor :protocol

    # A port or port ranges that will receive the forwarded traffic from the WAN
    # @return [String]
    attr_accessor :local_port

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2' or 'both')
    # @return [String]
    attr_accessor :uplink

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges (or any)
    # @return [List of String]
    attr_accessor :allowed_ips

    # A descriptive name for the rule
    # @return [String]
    attr_accessor :name

    # A port or port ranges that will be forwarded to the host on the LAN
    # @return [String]
    attr_accessor :public_port

    # The IP address of the server or device that hosts the internal resource
    # that you wish to make available on the WAN
    # @return [String]
    attr_accessor :lan_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['protocol'] = 'protocol'
      @_hash['local_port'] = 'localPort'
      @_hash['uplink'] = 'uplink'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash['name'] = 'name'
      @_hash['public_port'] = 'publicPort'
      @_hash['lan_ip'] = 'lanIp'
      @_hash
    end

    def initialize(protocol = nil,
                   local_port = nil,
                   uplink = nil,
                   allowed_ips = nil,
                   name = nil,
                   public_port = nil,
                   lan_ip = nil)
      @protocol = protocol
      @local_port = local_port
      @uplink = uplink
      @allowed_ips = allowed_ips
      @name = name
      @public_port = public_port
      @lan_ip = lan_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      protocol = hash['protocol']
      local_port = hash['localPort']
      uplink = hash['uplink']
      allowed_ips = hash['allowedIps']
      name = hash['name']
      public_port = hash['publicPort']
      lan_ip = hash['lanIp']

      # Create object from extracted values.
      Rule1Model.new(protocol,
                     local_port,
                     uplink,
                     allowed_ips,
                     name,
                     public_port,
                     lan_ip)
    end
  end
end
