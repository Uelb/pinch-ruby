# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class Person

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :firstname

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :lastname

    # The landline phone number of the resident or manager
    # @return [String]
    attr_reader :home_phone_number

    # TODO: Write general description for this method
    # @return [String]
    attr_reader :mobile_phone_number

    # Caretaker, Resident, Manager, ThirdParty
    # @return [String]
    attr_reader :role

    def initialize(firstname = nil,
                   lastname = nil,
                   home_phone_number = nil,
                   mobile_phone_number = nil,
                   role = nil)
      @firstname = firstname
      @lastname = lastname
      @home_phone_number = home_phone_number
      @mobile_phone_number = mobile_phone_number
      @role = role

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
        firstname = hash["firstname"]
        lastname = hash["lastname"]
        home_phone_number = hash["home_phone_number"]
        mobile_phone_number = hash["mobile_phone_number"]
        role = hash["role"]
        # Create object from extracted values
        Person.new(firstname,
                   lastname,
                   home_phone_number,
                   mobile_phone_number,
                   role)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['firstname'] = firstname
      hash['lastname'] = lastname
      hash['home_phone_number'] = home_phone_number
      hash['mobile_phone_number'] = mobile_phone_number
      hash['role'] = role
      hash
    end
  end
end
