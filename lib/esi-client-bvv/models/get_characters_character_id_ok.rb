=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # 200 ok object
  class GetCharactersCharacterIdOk
    # The character's alliance ID
    attr_accessor :alliance_id

    # ancestry_id integer
    attr_accessor :ancestry_id

    # Creation date of the character
    attr_accessor :birthday

    # bloodline_id integer
    attr_accessor :bloodline_id

    # The character's corporation ID
    attr_accessor :corporation_id

    # description string
    attr_accessor :description

    # ID of the faction the character is fighting for, if the character is enlisted in Factional Warfare
    attr_accessor :faction_id

    # gender string
    attr_accessor :gender

    # name string
    attr_accessor :name

    # race_id integer
    attr_accessor :race_id

    # security_status number
    attr_accessor :security_status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alliance_id' => :'alliance_id',
        :'ancestry_id' => :'ancestry_id',
        :'birthday' => :'birthday',
        :'bloodline_id' => :'bloodline_id',
        :'corporation_id' => :'corporation_id',
        :'description' => :'description',
        :'faction_id' => :'faction_id',
        :'gender' => :'gender',
        :'name' => :'name',
        :'race_id' => :'race_id',
        :'security_status' => :'security_status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alliance_id' => :'Integer',
        :'ancestry_id' => :'Integer',
        :'birthday' => :'DateTime',
        :'bloodline_id' => :'Integer',
        :'corporation_id' => :'Integer',
        :'description' => :'String',
        :'faction_id' => :'Integer',
        :'gender' => :'String',
        :'name' => :'String',
        :'race_id' => :'Integer',
        :'security_status' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'alliance_id')
        self.alliance_id = attributes[:'alliance_id']
      end

      if attributes.has_key?(:'ancestry_id')
        self.ancestry_id = attributes[:'ancestry_id']
      end

      if attributes.has_key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.has_key?(:'bloodline_id')
        self.bloodline_id = attributes[:'bloodline_id']
      end

      if attributes.has_key?(:'corporation_id')
        self.corporation_id = attributes[:'corporation_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'race_id')
        self.race_id = attributes[:'race_id']
      end

      if attributes.has_key?(:'security_status')
        self.security_status = attributes[:'security_status']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @birthday.nil?
        invalid_properties.push("invalid value for 'birthday', birthday cannot be nil.")
      end

      if @bloodline_id.nil?
        invalid_properties.push("invalid value for 'bloodline_id', bloodline_id cannot be nil.")
      end

      if @corporation_id.nil?
        invalid_properties.push("invalid value for 'corporation_id', corporation_id cannot be nil.")
      end

      if @gender.nil?
        invalid_properties.push("invalid value for 'gender', gender cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @race_id.nil?
        invalid_properties.push("invalid value for 'race_id', race_id cannot be nil.")
      end

      if !@security_status.nil? && @security_status > 10
        invalid_properties.push("invalid value for 'security_status', must be smaller than or equal to 10.")
      end

      if !@security_status.nil? && @security_status < -10
        invalid_properties.push("invalid value for 'security_status', must be greater than or equal to -10.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @birthday.nil?
      return false if @bloodline_id.nil?
      return false if @corporation_id.nil?
      return false if @gender.nil?
      gender_validator = EnumAttributeValidator.new('String', ["female", "male"])
      return false unless gender_validator.valid?(@gender)
      return false if @name.nil?
      return false if @race_id.nil?
      return false if !@security_status.nil? && @security_status > 10
      return false if !@security_status.nil? && @security_status < -10
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["female", "male"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for 'gender', must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Custom attribute writer method with validation
    # @param [Object] security_status Value to be assigned
    def security_status=(security_status)

      if !security_status.nil? && security_status > 10
        fail ArgumentError, "invalid value for 'security_status', must be smaller than or equal to 10."
      end

      if !security_status.nil? && security_status < -10
        fail ArgumentError, "invalid value for 'security_status', must be greater than or equal to -10."
      end

      @security_status = security_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alliance_id == o.alliance_id &&
          ancestry_id == o.ancestry_id &&
          birthday == o.birthday &&
          bloodline_id == o.bloodline_id &&
          corporation_id == o.corporation_id &&
          description == o.description &&
          faction_id == o.faction_id &&
          gender == o.gender &&
          name == o.name &&
          race_id == o.race_id &&
          security_status == o.security_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alliance_id, ancestry_id, birthday, bloodline_id, corporation_id, description, faction_id, gender, name, race_id, security_status].hash
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
