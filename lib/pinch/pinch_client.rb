# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class PinchClient
    # Singleton access to webhook_type controller
    # @return [WebhookTypeController] Returns the controller instance
    def webhook_type
      WebhookTypeController.instance
    end

    # Singleton access to webhook controller
    # @return [WebhookController] Returns the controller instance
    def webhook
      WebhookController.instance
    end

    # Singleton access to ticket controller
    # @return [TicketController] Returns the controller instance
    def ticket
      TicketController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(x_api_token: nil, x_api_email: nil)
      Configuration.x_api_token = x_api_token
      Configuration.x_api_email = x_api_email
    end
  end
end
