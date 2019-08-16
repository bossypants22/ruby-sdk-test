# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchPortScheduleModel Model.
  class UpdateNetworkSwitchPortScheduleModel < BaseModel
    # The schedule for switch port scheduling. Schedules are applied to days of
    # the week.
    #     When it's empty, default schedule with all days of a week are
    # configured.
    #     Any unspecified day in the schedule is added as a default schedule
    # configuration of the day.
    # @return [PortScheduleModel]
    attr_accessor :port_schedule

    # The name for your port schedule.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['port_schedule'] = 'portSchedule'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(port_schedule = nil,
                   name = nil)
      @port_schedule = port_schedule
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      port_schedule = PortScheduleModel.from_hash(hash['portSchedule']) if
        hash['portSchedule']
      name = hash['name']

      # Create object from extracted values.
      UpdateNetworkSwitchPortScheduleModel.new(port_schedule,
                                               name)
    end
  end
end
