# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class TicketController
    @@instance = TicketController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # List all the opened tickets of every clients you are working for
    # @return List of Ticket response from the API call
    def list
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets'

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
            value << (Ticket.from_hash(item))
          rescue Exception
            raise APIException.new "Invalid JSON returned.", _response.code, _response.body
          end
        end
        value
      end
    end

    # This method returns no result but the status code tells you if the operation succedded
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def accept_intervention(ticket_id)

      # Validate required parameters
      if ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/accept'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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
      _response = Unirest.post _query_url, headers: _headers

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

    # TODO: type endpoint description here
    # @param [DateTime] intervention_date Required parameter: TODO: type description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def set_intervention_date(intervention_date, 
                              ticket_id)

      # Validate required parameters
      if intervention_date == nil
        raise ArgumentError.new "Required parameter 'intervention_date' cannot be nil."
      elsif ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/set_intervention_date'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'intervention_date' => intervention_date
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # TODO: type endpoint description here
    # @param [File] file Required parameter: TODO: type description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def upload_quote(file, 
                     ticket_id)

      # Validate required parameters
      if file == nil
        raise ArgumentError.new "Required parameter 'file' cannot be nil."
      elsif ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/quote_upload'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'file' => file
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # TODO: type endpoint description here
    # @param [String] body Required parameter: TODO: type description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def send_message(body, 
                     ticket_id)

      # Validate required parameters
      if body == nil
        raise ArgumentError.new "Required parameter 'body' cannot be nil."
      elsif ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/message'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'body' => body
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # TODO: type endpoint description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @param [DateTime] intervention_date Optional parameter: TODO: type description here
    # @return String response from the API call
    def declare_intervention_done(ticket_id, 
                                  intervention_date = nil)

      # Validate required parameters
      if ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/intervention_done'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'intervention_date' => intervention_date
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # The document should not be an invoice nor a quote
    # @param [File] file Required parameter: TODO: type description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def upload_document(file, 
                        ticket_id)

      # Validate required parameters
      if file == nil
        raise ArgumentError.new "Required parameter 'file' cannot be nil."
      elsif ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/document_upload'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'file' => file
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # TODO: type endpoint description here
    # @param [File] file Required parameter: TODO: type description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return String response from the API call
    def upload_picture(file, 
                       ticket_id)

      # Validate required parameters
      if file == nil
        raise ArgumentError.new "Required parameter 'file' cannot be nil."
      elsif ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}/picture_upload'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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

      # prepare parameters
      _parameters = {
        'file' => file
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: _parameters

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

    # TODO: type endpoint description here
    # @param [String] ticket_id Required parameter: TODO: type description here
    # @return Ticket response from the API call
    def get(ticket_id)

      # Validate required parameters
      if ticket_id == nil
        raise ArgumentError.new "Required parameter 'ticket_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/tickets/{ticket_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_id' => ticket_id
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
          Ticket.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
