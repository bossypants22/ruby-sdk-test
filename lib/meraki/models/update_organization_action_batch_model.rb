# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationActionBatchModel Model.
  class UpdateOrganizationActionBatchModel < BaseModel
    # Set to true to force the batch to run synchronous. There can be at most 20
    # actions in synchronous batch.
    # @return [Boolean]
    attr_accessor :synchronous

    # A boolean representing whether or not the batch has been confirmed. This
    # property cannot be unset once it is true.
    # @return [Boolean]
    attr_accessor :confirmed

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['synchronous'] = 'synchronous'
      @_hash['confirmed'] = 'confirmed'
      @_hash
    end

    def initialize(synchronous = nil,
                   confirmed = nil)
      @synchronous = synchronous
      @confirmed = confirmed
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      synchronous = hash['synchronous']
      confirmed = hash['confirmed']

      # Create object from extracted values.
      UpdateOrganizationActionBatchModel.new(synchronous,
                                             confirmed)
    end
  end
end
