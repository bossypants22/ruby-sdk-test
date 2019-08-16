# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The schedule for the group policy. Schedules are applied to days of the
  # week.
  class SchedulingModel < BaseModel
    # The schedule object for Sunday.
    # @return [SundayModel]
    attr_accessor :sunday

    # The schedule object for Saturday.
    # @return [SaturdayModel]
    attr_accessor :saturday

    # The schedule object for Tuesday.
    # @return [TuesdayModel]
    attr_accessor :tuesday

    # The schedule object for Wednesday.
    # @return [WednesdayModel]
    attr_accessor :wednesday

    # The schedule object for Thursday.
    # @return [ThursdayModel]
    attr_accessor :thursday

    # The schedule object for Friday.
    # @return [FridayModel]
    attr_accessor :friday

    # Whether scheduling is enabled (true) or disabled (false). Defaults to
    # false. If true, the schedule objects for each day of the week (monday -
    # sunday) are parsed.
    # @return [Boolean]
    attr_accessor :enabled

    # The schedule object for Monday.
    # @return [MondayModel]
    attr_accessor :monday

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sunday'] = 'sunday'
      @_hash['saturday'] = 'saturday'
      @_hash['tuesday'] = 'tuesday'
      @_hash['wednesday'] = 'wednesday'
      @_hash['thursday'] = 'thursday'
      @_hash['friday'] = 'friday'
      @_hash['enabled'] = 'enabled'
      @_hash['monday'] = 'monday'
      @_hash
    end

    def initialize(sunday = nil,
                   saturday = nil,
                   tuesday = nil,
                   wednesday = nil,
                   thursday = nil,
                   friday = nil,
                   enabled = nil,
                   monday = nil)
      @sunday = sunday
      @saturday = saturday
      @tuesday = tuesday
      @wednesday = wednesday
      @thursday = thursday
      @friday = friday
      @enabled = enabled
      @monday = monday
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sunday = SundayModel.from_hash(hash['sunday']) if hash['sunday']
      saturday = SaturdayModel.from_hash(hash['saturday']) if hash['saturday']
      tuesday = TuesdayModel.from_hash(hash['tuesday']) if hash['tuesday']
      wednesday = WednesdayModel.from_hash(hash['wednesday']) if
        hash['wednesday']
      thursday = ThursdayModel.from_hash(hash['thursday']) if hash['thursday']
      friday = FridayModel.from_hash(hash['friday']) if hash['friday']
      enabled = hash['enabled']
      monday = MondayModel.from_hash(hash['monday']) if hash['monday']

      # Create object from extracted values.
      SchedulingModel.new(sunday,
                          saturday,
                          tuesday,
                          wednesday,
                          thursday,
                          friday,
                          enabled,
                          monday)
    end
  end
end
