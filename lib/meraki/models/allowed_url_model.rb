# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AllowedUrlModel Model.
  class AllowedUrlModel < BaseModel
    # Comment about the whitelisted entity
    # @return [String]
    attr_accessor :comment

    # The url to whitelist
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['comment'] = 'comment'
      @_hash['url'] = 'url'
      @_hash
    end

    def initialize(comment = nil,
                   url = nil)
      @comment = comment
      @url = url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      comment = hash['comment']
      url = hash['url']

      # Create object from extracted values.
      AllowedUrlModel.new(comment,
                          url)
    end
  end
end
