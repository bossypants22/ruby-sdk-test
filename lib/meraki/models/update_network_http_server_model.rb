# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkHttpServerModel Model.
  class UpdateNetworkHttpServerModel < BaseModel
    # A name for easy reference to the HTTP server
    # @return [String]
    attr_accessor :name

    # A shared secret that will be included in POSTs sent to the HTTP server.
    # This secret can be used to verify that the request was sent by Meraki.
    # @return [String]
    attr_accessor :shared_secret

    # The URL of the HTTP server
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['shared_secret'] = 'sharedSecret'
      @_hash['url'] = 'url'
      @_hash
    end

    def initialize(name = nil,
                   shared_secret = nil,
                   url = nil)
      @name = name
      @shared_secret = shared_secret
      @url = url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      shared_secret = hash['sharedSecret']
      url = hash['url']

      # Create object from extracted values.
      UpdateNetworkHttpServerModel.new(name,
                                       shared_secret,
                                       url)
    end
  end
end
