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
  class GetCharactersCharacterIdMedals200Ok
    # corporation_id integer
    attr_accessor :corporation_id

    # date string
    attr_accessor :date

    # description string
    attr_accessor :description

    # graphics array
    attr_accessor :graphics

    # issuer_id integer
    attr_accessor :issuer_id

    # medal_id integer
    attr_accessor :medal_id

    # reason string
    attr_accessor :reason

    # status string
    attr_accessor :status

    # title string
    attr_accessor :title

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
        :'corporation_id' => :'corporation_id',
        :'date' => :'date',
        :'description' => :'description',
        :'graphics' => :'graphics',
        :'issuer_id' => :'issuer_id',
        :'medal_id' => :'medal_id',
        :'reason' => :'reason',
        :'status' => :'status',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'corporation_id' => :'Integer',
        :'date' => :'DateTime',
        :'description' => :'String',
        :'graphics' => :'Array<GetCharactersCharacterIdMedalsGraphic>',
        :'issuer_id' => :'Integer',
        :'medal_id' => :'Integer',
        :'reason' => :'String',
        :'status' => :'String',
        :'title' => :'String'
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

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'graphics')
        if (value = attributes[:'graphics']).is_a?(Array)
          self.graphics = value
        end
      end

      if attributes.has_key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
      end

      if attributes.has_key?(:'medal_id')
        self.medal_id = attributes[:'medal_id']
      end

      if attributes.has_key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @corporation_id.nil?
        invalid_properties.push("invalid value for 'corporation_id', corporation_id cannot be nil.")
      end

      if @date.nil?
        invalid_properties.push("invalid value for 'date', date cannot be nil.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @graphics.nil?
        invalid_properties.push("invalid value for 'graphics', graphics cannot be nil.")
      end

      if @issuer_id.nil?
        invalid_properties.push("invalid value for 'issuer_id', issuer_id cannot be nil.")
      end

      if @medal_id.nil?
        invalid_properties.push("invalid value for 'medal_id', medal_id cannot be nil.")
      end

      if @reason.nil?
        invalid_properties.push("invalid value for 'reason', reason cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @corporation_id.nil?
      return false if @date.nil?
      return false if @description.nil?
      return false if @graphics.nil?
      return false if @issuer_id.nil?
      return false if @medal_id.nil?
      return false if @reason.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["public", "private"])
      return false unless status_validator.valid?(@status)
      return false if @title.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["public", "private"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          corporation_id == o.corporation_id &&
          date == o.date &&
          description == o.description &&
          graphics == o.graphics &&
          issuer_id == o.issuer_id &&
          medal_id == o.medal_id &&
          reason == o.reason &&
          status == o.status &&
          title == o.title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [corporation_id, date, description, graphics, issuer_id, medal_id, reason, status, title].hash
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
