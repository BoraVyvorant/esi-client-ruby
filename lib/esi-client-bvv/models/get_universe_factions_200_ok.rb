=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # 200 ok object
  class GetUniverseFactions200Ok
    # corporation_id integer
    attr_accessor :corporation_id

    # description string
    attr_accessor :description

    # faction_id integer
    attr_accessor :faction_id

    # is_unique boolean
    attr_accessor :is_unique

    # militia_corporation_id integer
    attr_accessor :militia_corporation_id

    # name string
    attr_accessor :name

    # size_factor number
    attr_accessor :size_factor

    # solar_system_id integer
    attr_accessor :solar_system_id

    # station_count integer
    attr_accessor :station_count

    # station_system_count integer
    attr_accessor :station_system_count


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'corporation_id' => :'corporation_id',
        :'description' => :'description',
        :'faction_id' => :'faction_id',
        :'is_unique' => :'is_unique',
        :'militia_corporation_id' => :'militia_corporation_id',
        :'name' => :'name',
        :'size_factor' => :'size_factor',
        :'solar_system_id' => :'solar_system_id',
        :'station_count' => :'station_count',
        :'station_system_count' => :'station_system_count'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'corporation_id' => :'Integer',
        :'description' => :'String',
        :'faction_id' => :'Integer',
        :'is_unique' => :'BOOLEAN',
        :'militia_corporation_id' => :'Integer',
        :'name' => :'String',
        :'size_factor' => :'Float',
        :'solar_system_id' => :'Integer',
        :'station_count' => :'Integer',
        :'station_system_count' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'corporation_id')
        self.corporation_id = attributes[:'corporation_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'is_unique')
        self.is_unique = attributes[:'is_unique']
      end

      if attributes.has_key?(:'militia_corporation_id')
        self.militia_corporation_id = attributes[:'militia_corporation_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'size_factor')
        self.size_factor = attributes[:'size_factor']
      end

      if attributes.has_key?(:'solar_system_id')
        self.solar_system_id = attributes[:'solar_system_id']
      end

      if attributes.has_key?(:'station_count')
        self.station_count = attributes[:'station_count']
      end

      if attributes.has_key?(:'station_system_count')
        self.station_system_count = attributes[:'station_system_count']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @faction_id.nil?
        invalid_properties.push("invalid value for 'faction_id', faction_id cannot be nil.")
      end

      if @is_unique.nil?
        invalid_properties.push("invalid value for 'is_unique', is_unique cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @size_factor.nil?
        invalid_properties.push("invalid value for 'size_factor', size_factor cannot be nil.")
      end

      if @station_count.nil?
        invalid_properties.push("invalid value for 'station_count', station_count cannot be nil.")
      end

      if @station_system_count.nil?
        invalid_properties.push("invalid value for 'station_system_count', station_system_count cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @description.nil?
      return false if @faction_id.nil?
      return false if @is_unique.nil?
      return false if @name.nil?
      return false if @size_factor.nil?
      return false if @station_count.nil?
      return false if @station_system_count.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          corporation_id == o.corporation_id &&
          description == o.description &&
          faction_id == o.faction_id &&
          is_unique == o.is_unique &&
          militia_corporation_id == o.militia_corporation_id &&
          name == o.name &&
          size_factor == o.size_factor &&
          solar_system_id == o.solar_system_id &&
          station_count == o.station_count &&
          station_system_count == o.station_system_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [corporation_id, description, faction_id, is_unique, militia_corporation_id, name, size_factor, solar_system_id, station_count, station_system_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ESI.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
