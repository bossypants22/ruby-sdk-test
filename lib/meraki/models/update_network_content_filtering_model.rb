# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkContentFilteringModel Model.
  class UpdateNetworkContentFilteringModel < BaseModel
    # A blacklist of URL patterns to block
    # @return [List of String]
    attr_accessor :blocked_url_patterns

    # URL category list size which is either 'topSites' or 'fullList'
    # @return [String]
    attr_accessor :url_category_list_size

    # A whitelist of URL patterns to allow
    # @return [List of String]
    attr_accessor :allowed_url_patterns

    # A list of URL categories to block
    # @return [List of String]
    attr_accessor :blocked_url_categories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['blocked_url_patterns'] = 'blockedUrlPatterns'
      @_hash['url_category_list_size'] = 'urlCategoryListSize'
      @_hash['allowed_url_patterns'] = 'allowedUrlPatterns'
      @_hash['blocked_url_categories'] = 'blockedUrlCategories'
      @_hash
    end

    def initialize(blocked_url_patterns = nil,
                   url_category_list_size = nil,
                   allowed_url_patterns = nil,
                   blocked_url_categories = nil)
      @blocked_url_patterns = blocked_url_patterns
      @url_category_list_size = url_category_list_size
      @allowed_url_patterns = allowed_url_patterns
      @blocked_url_categories = blocked_url_categories
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      blocked_url_patterns = hash['blockedUrlPatterns']
      url_category_list_size = hash['urlCategoryListSize']
      allowed_url_patterns = hash['allowedUrlPatterns']
      blocked_url_categories = hash['blockedUrlCategories']

      # Create object from extracted values.
      UpdateNetworkContentFilteringModel.new(blocked_url_patterns,
                                             url_category_list_size,
                                             allowed_url_patterns,
                                             blocked_url_categories)
    end
  end
end
