# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkVlanModel Model.
  class UpdateNetworkVlanModel < BaseModel
    # The DNS nameservers used for DHCP responses, either "upstream_dns",
    # "google_dns", "opendns", or a newline seperated string of IP addresses or
    # domain names
    # @return [String]
    attr_accessor :dns_nameservers

    # The subnet of the VLAN
    # @return [String]
    attr_accessor :subnet

    # The appliance's handling of DHCP requests on this VLAN. One of: "Run a
    # DHCP server", "Relay DHCP to another server", or "Do not respond to DHCP
    # requests"
    # @return [String]
    attr_accessor :dhcp_handling

    # The list of DHCP options that will be included in DHCP responses. Each
    # object in the list should have "code", "type", and "value" properties.
    # @return [List of DhcpOptionModel]
    attr_accessor :dhcp_options

    # Use DHCP boot options specified in other properties
    # @return [Boolean]
    attr_accessor :dhcp_boot_options_enabled

    # DHCP boot option to direct boot clients to the server to load the boot
    # file from
    # @return [String]
    attr_accessor :dhcp_boot_next_server

    # The DHCP fixed IP assignments on the VLAN. This should be an object that
    # contains mappings from MAC addresses to objects that themselves each
    # contain "ip" and "name" string fields. See the sample request/response for
    # more details.
    # @return [Object]
    attr_accessor :fixed_ip_assignments

    # The term of DHCP leases if the appliance is running a DHCP server on this
    # VLAN. One of: "30 minutes", "1 hour", "4 hours", "12 hours", "1 day", "1
    # week".
    # @return [String]
    attr_accessor :dhcp_lease_time

    # The translated VPN subnet if VPN and VPN subnet translation are enabled on
    # the VLAN
    # @return [String]
    attr_accessor :vpn_nat_subnet

    # The IPs of the DHCP servers that DHCP requests should be relayed to
    # @return [List of String]
    attr_accessor :dhcp_relay_server_ips

    # The name of the VLAN
    # @return [String]
    attr_accessor :name

    # The local IP of the appliance on the VLAN
    # @return [String]
    attr_accessor :appliance_ip

    # DHCP boot option for boot filename
    # @return [String]
    attr_accessor :dhcp_boot_filename

    # The DHCP reserved IP ranges on the VLAN
    # @return [List of ReservedIpRangeModel]
    attr_accessor :reserved_ip_ranges

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dns_nameservers'] = 'dnsNameservers'
      @_hash['subnet'] = 'subnet'
      @_hash['dhcp_handling'] = 'dhcpHandling'
      @_hash['dhcp_options'] = 'dhcpOptions'
      @_hash['dhcp_boot_options_enabled'] = 'dhcpBootOptionsEnabled'
      @_hash['dhcp_boot_next_server'] = 'dhcpBootNextServer'
      @_hash['fixed_ip_assignments'] = 'fixedIpAssignments'
      @_hash['dhcp_lease_time'] = 'dhcpLeaseTime'
      @_hash['vpn_nat_subnet'] = 'vpnNatSubnet'
      @_hash['dhcp_relay_server_ips'] = 'dhcpRelayServerIps'
      @_hash['name'] = 'name'
      @_hash['appliance_ip'] = 'applianceIp'
      @_hash['dhcp_boot_filename'] = 'dhcpBootFilename'
      @_hash['reserved_ip_ranges'] = 'reservedIpRanges'
      @_hash
    end

    def initialize(dns_nameservers = nil,
                   subnet = nil,
                   dhcp_handling = nil,
                   dhcp_options = nil,
                   dhcp_boot_options_enabled = nil,
                   dhcp_boot_next_server = nil,
                   fixed_ip_assignments = nil,
                   dhcp_lease_time = nil,
                   vpn_nat_subnet = nil,
                   dhcp_relay_server_ips = nil,
                   name = nil,
                   appliance_ip = nil,
                   dhcp_boot_filename = nil,
                   reserved_ip_ranges = nil)
      @dns_nameservers = dns_nameservers
      @subnet = subnet
      @dhcp_handling = dhcp_handling
      @dhcp_options = dhcp_options
      @dhcp_boot_options_enabled = dhcp_boot_options_enabled
      @dhcp_boot_next_server = dhcp_boot_next_server
      @fixed_ip_assignments = fixed_ip_assignments
      @dhcp_lease_time = dhcp_lease_time
      @vpn_nat_subnet = vpn_nat_subnet
      @dhcp_relay_server_ips = dhcp_relay_server_ips
      @name = name
      @appliance_ip = appliance_ip
      @dhcp_boot_filename = dhcp_boot_filename
      @reserved_ip_ranges = reserved_ip_ranges
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dns_nameservers = hash['dnsNameservers']
      subnet = hash['subnet']
      dhcp_handling = hash['dhcpHandling']
      # Parameter is an array, so we need to iterate through it
      dhcp_options = nil
      unless hash['dhcpOptions'].nil?
        dhcp_options = []
        hash['dhcpOptions'].each do |structure|
          dhcp_options << (DhcpOptionModel.from_hash(structure) if structure)
        end
      end
      dhcp_boot_options_enabled = hash['dhcpBootOptionsEnabled']
      dhcp_boot_next_server = hash['dhcpBootNextServer']
      fixed_ip_assignments = hash['fixedIpAssignments']
      dhcp_lease_time = hash['dhcpLeaseTime']
      vpn_nat_subnet = hash['vpnNatSubnet']
      dhcp_relay_server_ips = hash['dhcpRelayServerIps']
      name = hash['name']
      appliance_ip = hash['applianceIp']
      dhcp_boot_filename = hash['dhcpBootFilename']
      # Parameter is an array, so we need to iterate through it
      reserved_ip_ranges = nil
      unless hash['reservedIpRanges'].nil?
        reserved_ip_ranges = []
        hash['reservedIpRanges'].each do |structure|
          reserved_ip_ranges << (ReservedIpRangeModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkVlanModel.new(dns_nameservers,
                                 subnet,
                                 dhcp_handling,
                                 dhcp_options,
                                 dhcp_boot_options_enabled,
                                 dhcp_boot_next_server,
                                 fixed_ip_assignments,
                                 dhcp_lease_time,
                                 vpn_nat_subnet,
                                 dhcp_relay_server_ips,
                                 name,
                                 appliance_ip,
                                 dhcp_boot_filename,
                                 reserved_ip_ranges)
    end
  end
end
