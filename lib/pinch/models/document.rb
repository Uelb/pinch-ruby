# This file was automatically generated for Pinch by APIMATIC v2.0 ( https://apimatic.io ) on 06/01/2016

module Pinch
  class Document

    # Where to retrieve the document
    # @return [String]
    attr_reader :url

    # If possible, a thumbnail of the document
    # @return [String]
    attr_reader :thumb_url

    # TODO: Write general description for this method
    # @return [Integer]
    attr_reader :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    def initialize(url = nil,
                   thumb_url = nil,
                   id = nil,
                   name = nil)
      @url = url
      @thumb_url = thumb_url
      @id = id
      @name = name

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
        url = hash["url"]
        thumb_url = hash["thumb_url"]
        id = hash["id"]
        name = hash["name"]
        # Create object from extracted values
        Document.new(url,
                     thumb_url,
                     id,
                     name)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['url'] = url
      hash['thumb_url'] = thumb_url
      hash['id'] = id
      hash['name'] = name
      hash
    end
  end
end
