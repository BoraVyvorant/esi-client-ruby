=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # 200 ok object
  class GetUniverseTypesTypeIdOk
    # capacity number
    attr_accessor :capacity

    # description string
    attr_accessor :description

    # dogma_attributes array
    attr_accessor :dogma_attributes

    # dogma_effects array
    attr_accessor :dogma_effects

    # graphic_id integer
    attr_accessor :graphic_id

    # group_id integer
    attr_accessor :group_id

    # icon_id integer
    attr_accessor :icon_id

    # This only exists for types that can be put on the market
    attr_accessor :market_group_id

    # mass number
    attr_accessor :mass

    # name string
    attr_accessor :name

    # packaged_volume number
    attr_accessor :packaged_volume

    # portion_size integer
    attr_accessor :portion_size

    # published boolean
    attr_accessor :published

    # radius number
    attr_accessor :radius

    # type_id integer
    attr_accessor :type_id

    # volume number
    attr_accessor :volume


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'capacity' => :'capacity',
        :'description' => :'description',
        :'dogma_attributes' => :'dogma_attributes',
        :'dogma_effects' => :'dogma_effects',
        :'graphic_id' => :'graphic_id',
        :'group_id' => :'group_id',
        :'icon_id' => :'icon_id',
        :'market_group_id' => :'market_group_id',
        :'mass' => :'mass',
        :'name' => :'name',
        :'packaged_volume' => :'packaged_volume',
        :'portion_size' => :'portion_size',
        :'published' => :'published',
        :'radius' => :'radius',
        :'type_id' => :'type_id',
        :'volume' => :'volume'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'capacity' => :'Float',
        :'description' => :'String',
        :'dogma_attributes' => :'Array<GetUniverseTypesTypeIdDogmaAttribute>',
        :'dogma_effects' => :'Array<GetUniverseTypesTypeIdDogmaEffect>',
        :'graphic_id' => :'Integer',
        :'group_id' => :'Integer',
        :'icon_id' => :'Integer',
        :'market_group_id' => :'Integer',
        :'mass' => :'Float',
        :'name' => :'String',
        :'packaged_volume' => :'Float',
        :'portion_size' => :'Integer',
        :'published' => :'BOOLEAN',
        :'radius' => :'Float',
        :'type_id' => :'Integer',
        :'volume' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'capacity')
        self.capacity = attributes[:'capacity']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'dogma_attributes')
        if (value = attributes[:'dogma_attributes']).is_a?(Array)
          self.dogma_attributes = value
        end
      end

      if attributes.has_key?(:'dogma_effects')
        if (value = attributes[:'dogma_effects']).is_a?(Array)
          self.dogma_effects = value
        end
      end

      if attributes.has_key?(:'graphic_id')
        self.graphic_id = attributes[:'graphic_id']
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.has_key?(:'icon_id')
        self.icon_id = attributes[:'icon_id']
      end

      if attributes.has_key?(:'market_group_id')
        self.market_group_id = attributes[:'market_group_id']
      end

      if attributes.has_key?(:'mass')
        self.mass = attributes[:'mass']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'packaged_volume')
        self.packaged_volume = attributes[:'packaged_volume']
      end

      if attributes.has_key?(:'portion_size')
        self.portion_size = attributes[:'portion_size']
      end

      if attributes.has_key?(:'published')
        self.published = attributes[:'published']
      end

      if attributes.has_key?(:'radius')
        self.radius = attributes[:'radius']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @group_id.nil?
        invalid_properties.push("invalid value for 'group_id', group_id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @published.nil?
        invalid_properties.push("invalid value for 'published', published cannot be nil.")
      end

      if @type_id.nil?
        invalid_properties.push("invalid value for 'type_id', type_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @description.nil?
      return false if @group_id.nil?
      return false if @name.nil?
      return false if @published.nil?
      return false if @type_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          capacity == o.capacity &&
          description == o.description &&
          dogma_attributes == o.dogma_attributes &&
          dogma_effects == o.dogma_effects &&
          graphic_id == o.graphic_id &&
          group_id == o.group_id &&
          icon_id == o.icon_id &&
          market_group_id == o.market_group_id &&
          mass == o.mass &&
          name == o.name &&
          packaged_volume == o.packaged_volume &&
          portion_size == o.portion_size &&
          published == o.published &&
          radius == o.radius &&
          type_id == o.type_id &&
          volume == o.volume
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [capacity, description, dogma_attributes, dogma_effects, graphic_id, group_id, icon_id, market_group_id, mass, name, packaged_volume, portion_size, published, radius, type_id, volume].hash
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
