# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkClientPolicyModel Model.
  class UpdateNetworkClientPolicyModel < BaseModel
    # [optional] If devicePolicy param is set to 'Group policy' this param is
    # used to specify the group ID.
    # @return [String]
    attr_accessor :group_policy_id

    # The group policy (Whitelisted, Blocked, Normal, Group policy)
    # @return [String]
    attr_accessor :device_policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['group_policy_id'] = 'groupPolicyId'
      @_hash['device_policy'] = 'devicePolicy'
      @_hash
    end

    def initialize(group_policy_id = nil,
                   device_policy = nil)
      @group_policy_id = group_policy_id
      @device_policy = device_policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      group_policy_id = hash['groupPolicyId']
      device_policy = hash['devicePolicy']

      # Create object from extracted values.
      UpdateNetworkClientPolicyModel.new(group_policy_id,
                                         device_policy)
    end
  end
end
