# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ServerModel Model.
  class ServerModel < BaseModel
    # The port of the syslog server
    # @return [Integer]
    attr_accessor :port

    # A list of roles for the syslog server. Options (case-insensitive):
    # 'Wireless event log', 'Appliance event log', 'Switch event log', 'Air
    # Marshal events', 'Flows', 'URLs', 'IDS alerts', 'Security events'
    # @return [List of String]
    attr_accessor :roles

    # The IP address of the syslog server
    # @return [String]
    attr_accessor :host

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['port'] = 'port'
      @_hash['roles'] = 'roles'
      @_hash['host'] = 'host'
      @_hash
    end

    def initialize(port = nil,
                   roles = nil,
                   host = nil)
      @port = port
      @roles = roles
      @host = host
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      port = hash['port']
      roles = hash['roles']
      host = hash['host']

      # Create object from extracted values.
      ServerModel.new(port,
                      roles,
                      host)
    end
  end
end
