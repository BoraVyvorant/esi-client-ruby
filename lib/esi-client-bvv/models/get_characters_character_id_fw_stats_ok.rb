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
  class GetCharactersCharacterIdFwStatsOk
    # The given character's current faction rank
    attr_accessor :current_rank

    # The enlistment date of the given character into faction warfare. Will not be included if character is not enlisted in faction warfare
    attr_accessor :enlisted_on

    # The faction the given character is enlisted to fight for. Will not be included if character is not enlisted in faction warfare
    attr_accessor :faction_id

    # The given character's highest faction rank achieved
    attr_accessor :highest_rank

    attr_accessor :kills

    attr_accessor :victory_points


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'current_rank' => :'current_rank',
        :'enlisted_on' => :'enlisted_on',
        :'faction_id' => :'faction_id',
        :'highest_rank' => :'highest_rank',
        :'kills' => :'kills',
        :'victory_points' => :'victory_points'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'current_rank' => :'Integer',
        :'enlisted_on' => :'DateTime',
        :'faction_id' => :'Integer',
        :'highest_rank' => :'Integer',
        :'kills' => :'GetCharactersCharacterIdFwStatsKills',
        :'victory_points' => :'GetCharactersCharacterIdFwStatsVictoryPoints'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'current_rank')
        self.current_rank = attributes[:'current_rank']
      end

      if attributes.has_key?(:'enlisted_on')
        self.enlisted_on = attributes[:'enlisted_on']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'highest_rank')
        self.highest_rank = attributes[:'highest_rank']
      end

      if attributes.has_key?(:'kills')
        self.kills = attributes[:'kills']
      end

      if attributes.has_key?(:'victory_points')
        self.victory_points = attributes[:'victory_points']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@current_rank.nil? && @current_rank > 9
        invalid_properties.push("invalid value for 'current_rank', must be smaller than or equal to 9.")
      end

      if !@current_rank.nil? && @current_rank < 0
        invalid_properties.push("invalid value for 'current_rank', must be greater than or equal to 0.")
      end

      if !@highest_rank.nil? && @highest_rank > 9
        invalid_properties.push("invalid value for 'highest_rank', must be smaller than or equal to 9.")
      end

      if !@highest_rank.nil? && @highest_rank < 0
        invalid_properties.push("invalid value for 'highest_rank', must be greater than or equal to 0.")
      end

      if @kills.nil?
        invalid_properties.push("invalid value for 'kills', kills cannot be nil.")
      end

      if @victory_points.nil?
        invalid_properties.push("invalid value for 'victory_points', victory_points cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@current_rank.nil? && @current_rank > 9
      return false if !@current_rank.nil? && @current_rank < 0
      return false if !@highest_rank.nil? && @highest_rank > 9
      return false if !@highest_rank.nil? && @highest_rank < 0
      return false if @kills.nil?
      return false if @victory_points.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] current_rank Value to be assigned
    def current_rank=(current_rank)

      if !current_rank.nil? && current_rank > 9
        fail ArgumentError, "invalid value for 'current_rank', must be smaller than or equal to 9."
      end

      if !current_rank.nil? && current_rank < 0
        fail ArgumentError, "invalid value for 'current_rank', must be greater than or equal to 0."
      end

      @current_rank = current_rank
    end

    # Custom attribute writer method with validation
    # @param [Object] highest_rank Value to be assigned
    def highest_rank=(highest_rank)

      if !highest_rank.nil? && highest_rank > 9
        fail ArgumentError, "invalid value for 'highest_rank', must be smaller than or equal to 9."
      end

      if !highest_rank.nil? && highest_rank < 0
        fail ArgumentError, "invalid value for 'highest_rank', must be greater than or equal to 0."
      end

      @highest_rank = highest_rank
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          current_rank == o.current_rank &&
          enlisted_on == o.enlisted_on &&
          faction_id == o.faction_id &&
          highest_rank == o.highest_rank &&
          kills == o.kills &&
          victory_points == o.victory_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [current_rank, enlisted_on, faction_id, highest_rank, kills, victory_points].hash
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
