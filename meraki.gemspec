Gem::Specification.new do |s|
  s.name = 'meraki'
  s.version = '1.10.0'
  s.summary = 'meraki'
  s.description = 'The Cisco Meraki Dashboard API is a modern REST API based on the [OpenAPI](https://swagger.io/docs/specification/about/) specification.  ## What can the API be used for? The Dashboard API can be used for many purposes. It\'s meant to be an open-ended tool. Here are some examples of use cases:  * Add new organizations, admins, networks, devices, VLANs, and more * Configure networks at scale * Automatically on-board and off-board new employees\' teleworker setups * Build your own dashboard for store managers, field techs, or unique use cases  ## Enabling the Dashboard API 1. Begin by logging into [Meraki Dashboard](https://dashboard.meraki.com) and navigating to **Organization > Settings**  2. Locate the section titled **Dashboard API access** and select **Enable Access**, then **Save** your changes  3. After enabling the API, choose your username at the top-right of the Meraki Dashboard and select **my profile**  4. Locate the section titled **Dashboard API access** and select **Generate new API key**  *Note: The API key is associated with a Dashboard administrator account. You can generate, revoke, and regenerate your API key on your profile.*  **Keep your API key safe as it provides authentication to all of your organizations with the API enabled. If your API key is shared, you can regenerate your API key at any time. This will revoke the existing API key.**  Copy and store your API key in a safe place. Dashboard does not store API keys in plaintext for security reasons, so this is the only time you will be able to record it. If you lose or forget your API key, you will have to revoke it and generate a new one.  Every request must specify an API key via a request header.  The API key must be specified in the URL header. The API will return a 404 (rather than a 403) in response to a request with a missing or incorrect API key in order to prevent leaking the existence of resources to unauthorized users.  `X-Cisco-Meraki-API-Key: <secret key>`  Read more about API [authorization](../api/#/python/getting-started/authorizing-your-client)   ## Versioning Once an API version is released, we will make only backwards-compatible changes to it. Backwards-compatible changes include:  * Adding new API resources  * Adding new optional request parameters to existing API methods  * Adding new properties to existing API responses  * Changing the order of properties in existing API responses  ## Rate Limit * The Dashboard API is limited to **5 calls per second**, per organization. * A burst of 5 additional calls are allowed in the first second, so a maximum of 15 calls in the first 2 seconds. * The rate limiting technique is based off of the [token bucket model](https://en.wikipedia.org/wiki/Token_bucket). * An error with a `429` status code will be returned when the rate limit has been exceeded. * Expect to backoff for 1 - 2 seconds if the limit has been exceeded. You may have to wait potentially longer if a large number of requests were made within this timeframe.   ## Additional Details Identifiers in the API are opaque strings. A `{networkId}`, for example, might be the string "126043", whereas an `{orderId}` might contain characters, such as "4S1234567". Client applications must not try to parse them as numbers. Even identifiers that look like numbers might be too long to encode without loss of precision in Javascript, where the only numeric type is IEEE 754 floating point.  Verbs in the API follow the usual REST conventions:  `GET` returns the value of a resource or a list of resources, depending on whether an identifier is specified. For example, a `GET` of `/organizations` returns a list of organizations, whereas a `GET` of `/organizations/{organizationId}` returns a particular organization.  `POST` adds a new resource, as in a `POST` to `/organizations/{organizationId}/admins`, or performs some other non-idempotent change.  `PUT` updates a resource. `PUTs` are idempotent; they update a resource, creating it first if it does not already exist. A `PUT` should specify all the fields of a resource; the API will revert omitted fields to their default value.  `DELETE` removes a resource. '
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10')
  s.add_dependency('faraday_middleware', '~> 0.13.1')
  s.add_dependency('test-unit', '~> 3.1', '>= 3.1.5')
  s.add_dependency('certifi', '~> 2016')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
