# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RadiusServerModel Model.
  class RadiusServerModel < BaseModel
    # IP address of your RADIUS server
    # @return [String]
    attr_accessor :host

    # UDP port the RADIUS server listens on for Access-requests
    # @return [Integer]
    attr_accessor :port

    # RADIUS client shared secret
    # @return [String]
    attr_accessor :secret

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['host'] = 'host'
      @_hash['port'] = 'port'
      @_hash['secret'] = 'secret'
      @_hash
    end

    def initialize(host = nil,
                   port = nil,
                   secret = nil)
      @host = host
      @port = port
      @secret = secret
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      host = hash['host']
      port = hash['port']
      secret = hash['secret']

      # Create object from extracted values.
      RadiusServerModel.new(host,
                            port,
                            secret)
    end
  end
end
