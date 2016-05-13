# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class Building

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :reference

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :name

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :address

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :zip_code

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :city

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :country

    # TODO: Write general description for this method
    # @return [Float]
    attr_reader :latitude

    # TODO: Write general description for this method
    # @return [Float]
    attr_reader :longitude

    def initialize(reference = nil,
                   name = nil,
                   address = nil,
                   zip_code = nil,
                   city = nil,
                   country = nil,
                   latitude = nil,
                   longitude = nil)
      @reference = reference
      @name = name
      @address = address
      @zip_code = zip_code
      @city = city
      @country = country
      @latitude = latitude
      @longitude = longitude

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
        reference = hash["reference"]
        name = hash["name"]
        address = hash["address"]
        zip_code = hash["zip_code"]
        city = hash["city"]
        country = hash["country"]
        latitude = hash["latitude"]
        longitude = hash["longitude"]
        # Create object from extracted values
        Building.new(reference,
                     name,
                     address,
                     zip_code,
                     city,
                     country,
                     latitude,
                     longitude)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['reference'] = reference
      hash['name'] = name
      hash['address'] = address
      hash['zip_code'] = zip_code
      hash['city'] = city
      hash['country'] = country
      hash['latitude'] = latitude
      hash['longitude'] = longitude
      hash
    end
  end
end
