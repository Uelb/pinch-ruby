# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 05/13/2016

module Pinch
  class Ticket

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :id

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :name

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :description

    # TODO: Write general description for this method
    # @return [List of Person]
    attr_reader :contacts

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :status

    # TODO: Write general description for this method
    # @return [Building]
    attr_reader :building

    # TODO: Write general description for this method
    # @return [Unit]
    attr_reader :unit

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :access

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :agency

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :manager

    def initialize(id = nil,
                   name = nil,
                   description = nil,
                   contacts = nil,
                   status = nil,
                   building = nil,
                   unit = nil,
                   access = nil,
                   agency = nil,
                   manager = nil)
      @id = id
      @name = name
      @description = description
      @contacts = contacts
      @status = status
      @building = building
      @unit = unit
      @access = access
      @agency = agency
      @manager = manager

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
        description = hash["description"]
        # Parameter is an array, so we need to iterate through it
        contacts = nil
        if hash["contacts"] != nil
          contacts = Array.new
          hash["contacts"].each{|structure| contacts << Person.from_hash(structure)}
        end
        status = hash["status"]
        building = Building.from_hash(hash["building"])
        unit = Unit.from_hash(hash["unit"])
        access = hash["access"]
        agency = hash["agency"]
        manager = hash["manager"]
        # Create object from extracted values
        Ticket.new(id,
                   name,
                   description,
                   contacts,
                   status,
                   building,
                   unit,
                   access,
                   agency,
                   manager)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['id'] = id
      hash['name'] = name
      hash['description'] = description
      hash['contacts'] = contacts.map(&:key_map)
      hash['status'] = status
      hash['building'] = building.key_map
      hash['unit'] = unit.key_map
      hash['access'] = access
      hash['agency'] = agency
      hash['manager'] = manager
      hash
    end
  end
end
