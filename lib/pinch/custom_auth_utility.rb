# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class CustomAuthUtility
    # Appends the necessary OAuth credentials for making this authorized call
    # @param [Hash] The out going request to access the resource
    def self.append_custom_auth_params(headers)
      # TODO: Add your custom authentication here
      # The following properties are available to use
      #     Configuration.x_api_token
      #     Configuration.x_api_email
      #
      # i.e., Add a header through:
      #     headers["key"] = "value"
    end
  end
end