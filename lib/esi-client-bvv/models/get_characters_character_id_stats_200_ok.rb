=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # Aggregate stats for a year
  class GetCharactersCharacterIdStats200Ok
    # Gregorian year for this set of aggregates
    attr_accessor :year

    attr_accessor :character

    attr_accessor :combat

    attr_accessor :industry

    attr_accessor :inventory

    attr_accessor :isk

    attr_accessor :market

    attr_accessor :mining

    attr_accessor :_module

    attr_accessor :orbital

    attr_accessor :pve

    attr_accessor :social

    attr_accessor :travel


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'year' => :'year',
        :'character' => :'character',
        :'combat' => :'combat',
        :'industry' => :'industry',
        :'inventory' => :'inventory',
        :'isk' => :'isk',
        :'market' => :'market',
        :'mining' => :'mining',
        :'_module' => :'module',
        :'orbital' => :'orbital',
        :'pve' => :'pve',
        :'social' => :'social',
        :'travel' => :'travel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'year' => :'Integer',
        :'character' => :'GetCharactersCharacterIdStatsCharacter',
        :'combat' => :'GetCharactersCharacterIdStatsCombat',
        :'industry' => :'GetCharactersCharacterIdStatsIndustry',
        :'inventory' => :'GetCharactersCharacterIdStatsInventory',
        :'isk' => :'GetCharactersCharacterIdStatsIsk',
        :'market' => :'GetCharactersCharacterIdStatsMarket',
        :'mining' => :'GetCharactersCharacterIdStatsMining',
        :'_module' => :'GetCharactersCharacterIdStatsModule',
        :'orbital' => :'GetCharactersCharacterIdStatsOrbital',
        :'pve' => :'GetCharactersCharacterIdStatsPve',
        :'social' => :'GetCharactersCharacterIdStatsSocial',
        :'travel' => :'GetCharactersCharacterIdStatsTravel'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'year')
        self.year = attributes[:'year']
      end

      if attributes.has_key?(:'character')
        self.character = attributes[:'character']
      end

      if attributes.has_key?(:'combat')
        self.combat = attributes[:'combat']
      end

      if attributes.has_key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.has_key?(:'inventory')
        self.inventory = attributes[:'inventory']
      end

      if attributes.has_key?(:'isk')
        self.isk = attributes[:'isk']
      end

      if attributes.has_key?(:'market')
        self.market = attributes[:'market']
      end

      if attributes.has_key?(:'mining')
        self.mining = attributes[:'mining']
      end

      if attributes.has_key?(:'module')
        self._module = attributes[:'module']
      end

      if attributes.has_key?(:'orbital')
        self.orbital = attributes[:'orbital']
      end

      if attributes.has_key?(:'pve')
        self.pve = attributes[:'pve']
      end

      if attributes.has_key?(:'social')
        self.social = attributes[:'social']
      end

      if attributes.has_key?(:'travel')
        self.travel = attributes[:'travel']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @year.nil?
        invalid_properties.push("invalid value for 'year', year cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @year.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          year == o.year &&
          character == o.character &&
          combat == o.combat &&
          industry == o.industry &&
          inventory == o.inventory &&
          isk == o.isk &&
          market == o.market &&
          mining == o.mining &&
          _module == o._module &&
          orbital == o.orbital &&
          pve == o.pve &&
          social == o.social &&
          travel == o.travel
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [year, character, combat, industry, inventory, isk, market, mining, _module, orbital, pve, social, travel].hash
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
