# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class BaseController
    def validate_response(response)			
      if response.code == 401
        raise APIException.new "Your API key is incorrect", response.code, response.body
      elsif response.code == 400
        raise APIException.new "There is an error in the parameters you send", response.code, response.body
      elsif response.code == 404
        raise APIException.new "Cannot find the resource specified", response.code, response.body
      elsif !response.code.between?(200, 206) #[200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.body
      end
    end
  end
end