=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.7.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # 200 ok object
  class GetCorporationsCorporationIdStarbasesStarbaseIdOk
    # Who can view the starbase (POS)'s fule bay. Characters either need to have required role or belong to the starbase (POS) owner's corporation or alliance, as described by the enum, all other access settings follows the same scheme
    attr_accessor :fuel_bay_view

    # Who can take fuel blocks out of the starbase (POS)'s fuel bay
    attr_accessor :fuel_bay_take

    # Who can anchor starbase (POS) and its structures
    attr_accessor :anchor

    # Who can unanchor starbase (POS) and its structures
    attr_accessor :unanchor

    # Who can online starbase (POS) and its structures
    attr_accessor :online

    # Who can offline starbase (POS) and its structures
    attr_accessor :offline

    # allow_corporation_members boolean
    attr_accessor :allow_corporation_members

    # allow_alliance_members boolean
    attr_accessor :allow_alliance_members

    # True if the starbase (POS) is using alliance standings, otherwise using corporation's
    attr_accessor :use_alliance_standings

    # Starbase (POS) will attack if target's standing is lower than this value
    attr_accessor :attack_standing_threshold

    # Starbase (POS) will attack if target's security standing is lower than this value
    attr_accessor :attack_security_status_threshold

    # attack_if_other_security_status_dropping boolean
    attr_accessor :attack_if_other_security_status_dropping

    # attack_if_at_war boolean
    attr_accessor :attack_if_at_war

    # Fuel blocks and other things that will be consumed when operating a starbase (POS)
    attr_accessor :fuels

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
        :'fuel_bay_view' => :'fuel_bay_view',
        :'fuel_bay_take' => :'fuel_bay_take',
        :'anchor' => :'anchor',
        :'unanchor' => :'unanchor',
        :'online' => :'online',
        :'offline' => :'offline',
        :'allow_corporation_members' => :'allow_corporation_members',
        :'allow_alliance_members' => :'allow_alliance_members',
        :'use_alliance_standings' => :'use_alliance_standings',
        :'attack_standing_threshold' => :'attack_standing_threshold',
        :'attack_security_status_threshold' => :'attack_security_status_threshold',
        :'attack_if_other_security_status_dropping' => :'attack_if_other_security_status_dropping',
        :'attack_if_at_war' => :'attack_if_at_war',
        :'fuels' => :'fuels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'fuel_bay_view' => :'String',
        :'fuel_bay_take' => :'String',
        :'anchor' => :'String',
        :'unanchor' => :'String',
        :'online' => :'String',
        :'offline' => :'String',
        :'allow_corporation_members' => :'BOOLEAN',
        :'allow_alliance_members' => :'BOOLEAN',
        :'use_alliance_standings' => :'BOOLEAN',
        :'attack_standing_threshold' => :'Float',
        :'attack_security_status_threshold' => :'Float',
        :'attack_if_other_security_status_dropping' => :'BOOLEAN',
        :'attack_if_at_war' => :'BOOLEAN',
        :'fuels' => :'Array<GetCorporationsCorporationIdStarbasesStarbaseIdFuel>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'fuel_bay_view')
        self.fuel_bay_view = attributes[:'fuel_bay_view']
      end

      if attributes.has_key?(:'fuel_bay_take')
        self.fuel_bay_take = attributes[:'fuel_bay_take']
      end

      if attributes.has_key?(:'anchor')
        self.anchor = attributes[:'anchor']
      end

      if attributes.has_key?(:'unanchor')
        self.unanchor = attributes[:'unanchor']
      end

      if attributes.has_key?(:'online')
        self.online = attributes[:'online']
      end

      if attributes.has_key?(:'offline')
        self.offline = attributes[:'offline']
      end

      if attributes.has_key?(:'allow_corporation_members')
        self.allow_corporation_members = attributes[:'allow_corporation_members']
      end

      if attributes.has_key?(:'allow_alliance_members')
        self.allow_alliance_members = attributes[:'allow_alliance_members']
      end

      if attributes.has_key?(:'use_alliance_standings')
        self.use_alliance_standings = attributes[:'use_alliance_standings']
      end

      if attributes.has_key?(:'attack_standing_threshold')
        self.attack_standing_threshold = attributes[:'attack_standing_threshold']
      end

      if attributes.has_key?(:'attack_security_status_threshold')
        self.attack_security_status_threshold = attributes[:'attack_security_status_threshold']
      end

      if attributes.has_key?(:'attack_if_other_security_status_dropping')
        self.attack_if_other_security_status_dropping = attributes[:'attack_if_other_security_status_dropping']
      end

      if attributes.has_key?(:'attack_if_at_war')
        self.attack_if_at_war = attributes[:'attack_if_at_war']
      end

      if attributes.has_key?(:'fuels')
        if (value = attributes[:'fuels']).is_a?(Array)
          self.fuels = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @fuel_bay_view.nil?
        invalid_properties.push("invalid value for 'fuel_bay_view', fuel_bay_view cannot be nil.")
      end

      if @fuel_bay_take.nil?
        invalid_properties.push("invalid value for 'fuel_bay_take', fuel_bay_take cannot be nil.")
      end

      if @anchor.nil?
        invalid_properties.push("invalid value for 'anchor', anchor cannot be nil.")
      end

      if @unanchor.nil?
        invalid_properties.push("invalid value for 'unanchor', unanchor cannot be nil.")
      end

      if @online.nil?
        invalid_properties.push("invalid value for 'online', online cannot be nil.")
      end

      if @offline.nil?
        invalid_properties.push("invalid value for 'offline', offline cannot be nil.")
      end

      if @allow_corporation_members.nil?
        invalid_properties.push("invalid value for 'allow_corporation_members', allow_corporation_members cannot be nil.")
      end

      if @allow_alliance_members.nil?
        invalid_properties.push("invalid value for 'allow_alliance_members', allow_alliance_members cannot be nil.")
      end

      if @use_alliance_standings.nil?
        invalid_properties.push("invalid value for 'use_alliance_standings', use_alliance_standings cannot be nil.")
      end

      if @attack_if_other_security_status_dropping.nil?
        invalid_properties.push("invalid value for 'attack_if_other_security_status_dropping', attack_if_other_security_status_dropping cannot be nil.")
      end

      if @attack_if_at_war.nil?
        invalid_properties.push("invalid value for 'attack_if_at_war', attack_if_at_war cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fuel_bay_view.nil?
      fuel_bay_view_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless fuel_bay_view_validator.valid?(@fuel_bay_view)
      return false if @fuel_bay_take.nil?
      fuel_bay_take_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless fuel_bay_take_validator.valid?(@fuel_bay_take)
      return false if @anchor.nil?
      anchor_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless anchor_validator.valid?(@anchor)
      return false if @unanchor.nil?
      unanchor_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless unanchor_validator.valid?(@unanchor)
      return false if @online.nil?
      online_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless online_validator.valid?(@online)
      return false if @offline.nil?
      offline_validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      return false unless offline_validator.valid?(@offline)
      return false if @allow_corporation_members.nil?
      return false if @allow_alliance_members.nil?
      return false if @use_alliance_standings.nil?
      return false if @attack_if_other_security_status_dropping.nil?
      return false if @attack_if_at_war.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel_bay_view Object to be assigned
    def fuel_bay_view=(fuel_bay_view)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(fuel_bay_view)
        fail ArgumentError, "invalid value for 'fuel_bay_view', must be one of #{validator.allowable_values}."
      end
      @fuel_bay_view = fuel_bay_view
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel_bay_take Object to be assigned
    def fuel_bay_take=(fuel_bay_take)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(fuel_bay_take)
        fail ArgumentError, "invalid value for 'fuel_bay_take', must be one of #{validator.allowable_values}."
      end
      @fuel_bay_take = fuel_bay_take
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] anchor Object to be assigned
    def anchor=(anchor)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(anchor)
        fail ArgumentError, "invalid value for 'anchor', must be one of #{validator.allowable_values}."
      end
      @anchor = anchor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unanchor Object to be assigned
    def unanchor=(unanchor)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(unanchor)
        fail ArgumentError, "invalid value for 'unanchor', must be one of #{validator.allowable_values}."
      end
      @unanchor = unanchor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] online Object to be assigned
    def online=(online)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(online)
        fail ArgumentError, "invalid value for 'online', must be one of #{validator.allowable_values}."
      end
      @online = online
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offline Object to be assigned
    def offline=(offline)
      validator = EnumAttributeValidator.new('String', ["alliance_member", "config_starbase_equipment_role", "corporation_member", "starbase_fuel_technician_role"])
      unless validator.valid?(offline)
        fail ArgumentError, "invalid value for 'offline', must be one of #{validator.allowable_values}."
      end
      @offline = offline
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fuel_bay_view == o.fuel_bay_view &&
          fuel_bay_take == o.fuel_bay_take &&
          anchor == o.anchor &&
          unanchor == o.unanchor &&
          online == o.online &&
          offline == o.offline &&
          allow_corporation_members == o.allow_corporation_members &&
          allow_alliance_members == o.allow_alliance_members &&
          use_alliance_standings == o.use_alliance_standings &&
          attack_standing_threshold == o.attack_standing_threshold &&
          attack_security_status_threshold == o.attack_security_status_threshold &&
          attack_if_other_security_status_dropping == o.attack_if_other_security_status_dropping &&
          attack_if_at_war == o.attack_if_at_war &&
          fuels == o.fuels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fuel_bay_view, fuel_bay_take, anchor, unanchor, online, offline, allow_corporation_members, allow_alliance_members, use_alliance_standings, attack_standing_threshold, attack_security_status_threshold, attack_if_other_security_status_dropping, attack_if_at_war, fuels].hash
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
