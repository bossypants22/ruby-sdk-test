# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UserModel Model.
  class UserModel < BaseModel
    # The passphrase for the SNMP user. Required.
    # @return [String]
    attr_accessor :passphrase

    # The username for the SNMP user. Required.
    # @return [String]
    attr_accessor :username

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['passphrase'] = 'passphrase'
      @_hash['username'] = 'username'
      @_hash
    end

    def initialize(passphrase = nil,
                   username = nil)
      @passphrase = passphrase
      @username = username
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      passphrase = hash['passphrase']
      username = hash['username']

      # Create object from extracted values.
      UserModel.new(passphrase,
                    username)
    end
  end
end
