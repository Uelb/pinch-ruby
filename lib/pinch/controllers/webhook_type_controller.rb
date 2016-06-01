# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class WebhookTypeController < BaseController
    @@instance = WebhookTypeController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # List webhook types
    # @return List of WebhookType response from the API call
    def list
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhook_types'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'X-API-TOKEN' => Configuration.x_api_token,
        'X-API-EMAIL' => Configuration.x_api_email
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params _headers

      # invoke the API call request to fetch the response
      _response = Unirest.get _query_url, headers: _headers

      # Endpoint error handling using HTTP status codes.
      if _response.code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)
        
      # Try to cast response to list of desired type
      if _response.body.instance_of? Array
        value = Array.new
        _response.body.each do |item|
          begin
            value << (WebhookType.from_hash(item))
          rescue Exception
            raise APIException.new "Invalid JSON returned.", _response.code, _response.body
          end
        end
        value
      end
    end
  end
end
