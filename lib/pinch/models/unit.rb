# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class Unit

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :reference

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :tenant_name

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :floor_number

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :kind

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :french_floor_number

    def initialize(reference = nil,
                   tenant_name = nil,
                   floor_number = nil,
                   kind = nil,
                   french_floor_number = nil)
      @reference = reference
      @tenant_name = tenant_name
      @floor_number = floor_number
      @kind = kind
      @french_floor_number = french_floor_number

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        reference = hash["reference"]
        tenant_name = hash["tenant_name"]
        floor_number = hash["floor_number"]
        kind = hash["kind"]
        french_floor_number = hash["french_floor_number"]
        # Create object from extracted values
        Unit.new(reference,
                 tenant_name,
                 floor_number,
                 kind,
                 french_floor_number)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['reference'] = reference
      hash['tenant_name'] = tenant_name
      hash['floor_number'] = floor_number
      hash['kind'] = kind
      hash['french_floor_number'] = french_floor_number
      hash
    end
  end
end
