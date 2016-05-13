# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class Webhook

    # TODO: Write general description for this method
    # @return [Integer]
    attr_reader :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :webhook_type

    def initialize(id = nil,
                   url = nil,
                   webhook_type = nil)
      @id = id
      @url = url
      @webhook_type = webhook_type

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json
      hash = key_map
      hash.to_json
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id = hash["id"]
        url = hash["url"]
        webhook_type = hash["webhook_type"]
        # Create object from extracted values
        Webhook.new(id,
                    url,
                    webhook_type)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['id'] = id
      hash['url'] = url
      hash['webhook_type'] = webhook_type
      hash
    end
  end
end
