# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Either 'renew' or 'addDevices'. 'addDevices' will increase the license
  # limit, while 'renew' will extend the amount of time until expiration. Please
  # see <a target='_blank'
  # href='https://documentation.meraki.com/zGeneral_Administration/Licensing/Add
  # ing_an_Enterprise_license_to_an_existing_Dashboard_account'>this article</a>
  # for more information.
  class Mode1Enum
    MODE1_ENUM = [
      # TODO: Write general description for ADDDEVICES
      ADDDEVICES = 'addDevices'.freeze,

      # TODO: Write general description for RENEW
      RENEW = 'renew'.freeze
    ].freeze
  end
end
