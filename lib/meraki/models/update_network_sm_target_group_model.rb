# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmTargetGroupModel Model.
  class UpdateNetworkSmTargetGroupModel < BaseModel
    # The scope and tag options of the target group. Comma separated values
    # beginning with one of withAny, withAll, withoutAny, withoutAll, all, none,
    # followed by tags. Default to none if empty.
    # @return [String]
    attr_accessor :scope

    # The name of this target group
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scope'] = 'scope'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(scope = nil,
                   name = nil)
      @scope = scope
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scope = hash['scope']
      name = hash['name']

      # Create object from extracted values.
      UpdateNetworkSmTargetGroupModel.new(scope,
                                          name)
    end
  end
end
