# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://api-company.inchbase.com/api/v1'

    # Your api key
    @x_api_token = nil

    # Your registered email
    @x_api_email = nil

    # create the getters and setters
    class << self
      attr_accessor :base_uri
      attr_accessor :x_api_token
      attr_accessor :x_api_email
      attr_accessor :x_api_token
      attr_accessor :x_api_email
    end
  end
end
