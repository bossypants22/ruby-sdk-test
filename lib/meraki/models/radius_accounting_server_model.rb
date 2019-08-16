# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RadiusAccountingServerModel Model.
  class RadiusAccountingServerModel < BaseModel
    # Port on the RADIUS server that is listening for accounting messages
    # @return [Integer]
    attr_accessor :port

    # IP address to which the APs will send RADIUS accounting messages
    # @return [String]
    attr_accessor :host

    # Shared key used to authenticate messages between the APs and RADIUS server
    # @return [String]
    attr_accessor :secret

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['port'] = 'port'
      @_hash['host'] = 'host'
      @_hash['secret'] = 'secret'
      @_hash
    end

    def initialize(port = nil,
                   host = nil,
                   secret = nil)
      @port = port
      @host = host
      @secret = secret
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      port = hash['port']
      host = hash['host']
      secret = hash['secret']

      # Create object from extracted values.
      RadiusAccountingServerModel.new(port,
                                      host,
                                      secret)
    end
  end
end
