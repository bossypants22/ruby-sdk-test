# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationSamlRoleModel Model.
  class UpdateOrganizationSamlRoleModel < BaseModel
    # The role of the SAML administrator
    # @return [String]
    attr_accessor :role

    # The privilege of the SAML administrator on the organization
    # @return [String]
    attr_accessor :org_access

    # The list of networks that the SAML administrator has privileges on
    # @return [List of NetworkModel]
    attr_accessor :networks

    # The list of tags that the SAML administrator has privileges on
    # @return [List of TagModel]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['role'] = 'role'
      @_hash['org_access'] = 'orgAccess'
      @_hash['networks'] = 'networks'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(role = nil,
                   org_access = nil,
                   networks = nil,
                   tags = nil)
      @role = role
      @org_access = org_access
      @networks = networks
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      role = hash['role']
      org_access = hash['orgAccess']
      # Parameter is an array, so we need to iterate through it
      networks = nil
      unless hash['networks'].nil?
        networks = []
        hash['networks'].each do |structure|
          networks << (NetworkModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (TagModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateOrganizationSamlRoleModel.new(role,
                                          org_access,
                                          networks,
                                          tags)
    end
  end
end
