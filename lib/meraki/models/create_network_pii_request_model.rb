# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkPiiRequestModel Model.
  class CreateNetworkPiiRequestModel < BaseModel
    # The sm_device_id of a Systems Manager device. The only way to "restrict
    # processing" or "delete" a Systems Manager device. Must include "device" in
    # the dataset for a "delete" request to destroy the device.
    # @return [String]
    attr_accessor :sm_device_id

    # The datasets related to the provided key that should be deleted. Only
    # applies to "delete" requests. The value "all" will be expanded to all
    # datasets applicable to this type. The datasets by applicable to each type
    # are: mac (usage, events, traffic), email (users, loginAttempts), username
    # (users, loginAttempts), bluetoothMac (client, connectivity), smDeviceId
    # (device), smUserId (user)
    # @return [List of String]
    attr_accessor :datasets

    # One of "delete" or "restrict processing"
    # @return [Type7Enum]
    attr_accessor :type

    # The email of a network user account. Only applies to "delete" requests.
    # @return [String]
    attr_accessor :email

    # The MAC of a network client device. Applies to both "restrict processing"
    # and "delete" requests.
    # @return [String]
    attr_accessor :mac

    # The sm_user_id of a Systems Manager user. The only way to "restrict
    # processing" or "delete" a Systems Manager user. Must include "user" in the
    # dataset for a "delete" request to destroy the user.
    # @return [String]
    attr_accessor :sm_user_id

    # The username of a network log in. Only applies to "delete" requests.
    # @return [String]
    attr_accessor :username

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sm_device_id'] = 'smDeviceId'
      @_hash['datasets'] = 'datasets'
      @_hash['type'] = 'type'
      @_hash['email'] = 'email'
      @_hash['mac'] = 'mac'
      @_hash['sm_user_id'] = 'smUserId'
      @_hash['username'] = 'username'
      @_hash
    end

    def initialize(sm_device_id = nil,
                   datasets = nil,
                   type = nil,
                   email = nil,
                   mac = nil,
                   sm_user_id = nil,
                   username = nil)
      @sm_device_id = sm_device_id
      @datasets = datasets
      @type = type
      @email = email
      @mac = mac
      @sm_user_id = sm_user_id
      @username = username
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sm_device_id = hash['smDeviceId']
      datasets = hash['datasets']
      type = hash['type']
      email = hash['email']
      mac = hash['mac']
      sm_user_id = hash['smUserId']
      username = hash['username']

      # Create object from extracted values.
      CreateNetworkPiiRequestModel.new(sm_device_id,
                                       datasets,
                                       type,
                                       email,
                                       mac,
                                       sm_user_id,
                                       username)
    end
  end
end
