# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class WebhookType

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    def initialize(id = nil,
                   name = nil)
      @id = id
      @name = name

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
        name = hash["name"]
        # Create object from extracted values
        WebhookType.new(id,
                        name)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['id'] = id
      hash['name'] = name
      hash
    end
  end
end
