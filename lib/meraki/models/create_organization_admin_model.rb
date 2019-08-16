# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationAdminModel Model.
  class CreateOrganizationAdminModel < BaseModel
    # The name of the dashboard administrator
    # @return [String]
    attr_accessor :name

    # The privilege of the dashboard administrator on the organization (full,
    # read-only, none)
    # @return [String]
    attr_accessor :org_access

    # The list of networks that the dashboard administrator has privileges on
    # @return [List of Network1Model]
    attr_accessor :networks

    # The email of the dashboard administrator. This attribute can not be
    # updated.
    # @return [String]
    attr_accessor :email

    # The list of tags that the dashboard administrator has privileges on
    # @return [List of Tag1Model]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['org_access'] = 'orgAccess'
      @_hash['networks'] = 'networks'
      @_hash['email'] = 'email'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(name = nil,
                   org_access = nil,
                   email = nil,
                   networks = nil,
                   tags = nil)
      @name = name
      @org_access = org_access
      @networks = networks
      @email = email
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      org_access = hash['orgAccess']
      email = hash['email']
      # Parameter is an array, so we need to iterate through it
      networks = nil
      unless hash['networks'].nil?
        networks = []
        hash['networks'].each do |structure|
          networks << (Network1Model.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (Tag1Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreateOrganizationAdminModel.new(name,
                                       org_access,
                                       email,
                                       networks,
                                       tags)
    end
  end
end
