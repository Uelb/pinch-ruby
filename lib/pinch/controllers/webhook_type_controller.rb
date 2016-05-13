# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class WebhookTypeController
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

      # Error handling using HTTP status codes
      if _response.code == 401
        raise APIException.new 'Your API key is incorrect', 401, _response.body
      elsif _response.code == 400
        raise APIException.new 'There is an error in the parameters you send', 400, _response.body
      elsif _response.code == 404
        raise APIException.new 'Cannot find the resource specified', 404, _response.body
      elsif !_response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', _response.code, _response.body
      end
        
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
