# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class WebhookController
    @@instance = WebhookController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # List the webhooks of the current user
    # @return List of Webhook response from the API call
    def list
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhooks'

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
            value << (Webhook.from_hash(item))
          rescue Exception
            raise APIException.new "Invalid JSON returned.", _response.code, _response.body
          end
        end
        value
      end
    end

    # TODO: type endpoint description here
    # @param [Webhook] webhook Required parameter: TODO: type description here
    # @return Webhook response from the API call
    def create(webhook)

      # Validate required parameters
      if webhook == nil
        raise ArgumentError.new "Required parameter 'webhook' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhooks'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'X-API-TOKEN' => Configuration.x_api_token,
        'X-API-EMAIL' => Configuration.x_api_email
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params _headers

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: webhook.to_json

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

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          Webhook.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # TODO: type endpoint description here
    # @param [Integer] webhook_id Required parameter: TODO: type description here
    # @param [Webhook] webhook Optional parameter: TODO: type description here
    # @return Webhook response from the API call
    def update(webhook_id, 
               webhook = nil)

      # Validate required parameters
      if webhook_id == nil
        raise ArgumentError.new "Required parameter 'webhook_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhooks/{webhook_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'webhook_id' => webhook_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'X-API-TOKEN' => Configuration.x_api_token,
        'X-API-EMAIL' => Configuration.x_api_email
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params _headers

      # invoke the API call request to fetch the response
      _response = Unirest.put _query_url, headers: _headers, parameters: webhook.to_json

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

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          Webhook.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # TODO: type endpoint description here
    # @param [Integer] webhook_id Required parameter: TODO: type description here
    # @return String response from the API call
    def destroy(webhook_id)

      # Validate required parameters
      if webhook_id == nil
        raise ArgumentError.new "Required parameter 'webhook_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhooks/{webhook_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'webhook_id' => webhook_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'X-API-TOKEN' => Configuration.x_api_token,
        'X-API-EMAIL' => Configuration.x_api_email
      }

      # append custom auth authorization
      CustomAuthUtility.append_custom_auth_params _headers

      # invoke the API call request to fetch the response
      _response = Unirest.delete _query_url, headers: _headers

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

      # Return appropriate type
      _response.body
    end

    # Get a specific webhook by its id
    # @param [String] id Required parameter: TODO: type description here
    # @return Webhook response from the API call
    def get(id)

      # Validate required parameters
      if id == nil
        raise ArgumentError.new "Required parameter 'id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webhooks/{id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => id
      }

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

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          Webhook.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
