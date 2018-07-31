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
  class GetCorporationsCorporationIdContainersLogs200Ok
    # action string
    attr_accessor :action

    # ID of the character who performed the action.
    attr_accessor :character_id

    # ID of the container
    attr_accessor :container_id

    # Type ID of the container
    attr_accessor :container_type_id

    # location_flag string
    attr_accessor :location_flag

    # location_id integer
    attr_accessor :location_id

    # Timestamp when this log was created
    attr_accessor :logged_at

    # new_config_bitmask integer
    attr_accessor :new_config_bitmask

    # old_config_bitmask integer
    attr_accessor :old_config_bitmask

    # Type of password set if action is of type SetPassword or EnterPassword
    attr_accessor :password_type

    # Quantity of the item being acted upon
    attr_accessor :quantity

    # Type ID of the item being acted upon
    attr_accessor :type_id

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
        :'action' => :'action',
        :'character_id' => :'character_id',
        :'container_id' => :'container_id',
        :'container_type_id' => :'container_type_id',
        :'location_flag' => :'location_flag',
        :'location_id' => :'location_id',
        :'logged_at' => :'logged_at',
        :'new_config_bitmask' => :'new_config_bitmask',
        :'old_config_bitmask' => :'old_config_bitmask',
        :'password_type' => :'password_type',
        :'quantity' => :'quantity',
        :'type_id' => :'type_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action' => :'String',
        :'character_id' => :'Integer',
        :'container_id' => :'Integer',
        :'container_type_id' => :'Integer',
        :'location_flag' => :'String',
        :'location_id' => :'Integer',
        :'logged_at' => :'DateTime',
        :'new_config_bitmask' => :'Integer',
        :'old_config_bitmask' => :'Integer',
        :'password_type' => :'String',
        :'quantity' => :'Integer',
        :'type_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'character_id')
        self.character_id = attributes[:'character_id']
      end

      if attributes.has_key?(:'container_id')
        self.container_id = attributes[:'container_id']
      end

      if attributes.has_key?(:'container_type_id')
        self.container_type_id = attributes[:'container_type_id']
      end

      if attributes.has_key?(:'location_flag')
        self.location_flag = attributes[:'location_flag']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'logged_at')
        self.logged_at = attributes[:'logged_at']
      end

      if attributes.has_key?(:'new_config_bitmask')
        self.new_config_bitmask = attributes[:'new_config_bitmask']
      end

      if attributes.has_key?(:'old_config_bitmask')
        self.old_config_bitmask = attributes[:'old_config_bitmask']
      end

      if attributes.has_key?(:'password_type')
        self.password_type = attributes[:'password_type']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action.nil?
        invalid_properties.push("invalid value for 'action', action cannot be nil.")
      end

      if @character_id.nil?
        invalid_properties.push("invalid value for 'character_id', character_id cannot be nil.")
      end

      if @container_id.nil?
        invalid_properties.push("invalid value for 'container_id', container_id cannot be nil.")
      end

      if @container_type_id.nil?
        invalid_properties.push("invalid value for 'container_type_id', container_type_id cannot be nil.")
      end

      if @location_flag.nil?
        invalid_properties.push("invalid value for 'location_flag', location_flag cannot be nil.")
      end

      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @logged_at.nil?
        invalid_properties.push("invalid value for 'logged_at', logged_at cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action.nil?
      action_validator = EnumAttributeValidator.new('String', ["add", "assemble", "configure", "enter_password", "lock", "move", "repackage", "set_name", "set_password", "unlock"])
      return false unless action_validator.valid?(@action)
      return false if @character_id.nil?
      return false if @container_id.nil?
      return false if @container_type_id.nil?
      return false if @location_flag.nil?
      location_flag_validator = EnumAttributeValidator.new('String', ["AssetSafety", "AutoFit", "Bonus", "Booster", "BoosterBay", "Capsule", "Cargo", "CorpDeliveries", "CorpSAG1", "CorpSAG2", "CorpSAG3", "CorpSAG4", "CorpSAG5", "CorpSAG6", "CorpSAG7", "CrateLoot", "Deliveries", "DroneBay", "DustBattle", "DustDatabank", "FighterBay", "FighterTube0", "FighterTube1", "FighterTube2", "FighterTube3", "FighterTube4", "FleetHangar", "Hangar", "HangarAll", "HiSlot0", "HiSlot1", "HiSlot2", "HiSlot3", "HiSlot4", "HiSlot5", "HiSlot6", "HiSlot7", "HiddenModifiers", "Implant", "Impounded", "JunkyardReprocessed", "JunkyardTrashed", "LoSlot0", "LoSlot1", "LoSlot2", "LoSlot3", "LoSlot4", "LoSlot5", "LoSlot6", "LoSlot7", "Locked", "MedSlot0", "MedSlot1", "MedSlot2", "MedSlot3", "MedSlot4", "MedSlot5", "MedSlot6", "MedSlot7", "OfficeFolder", "Pilot", "PlanetSurface", "QuafeBay", "Reward", "RigSlot0", "RigSlot1", "RigSlot2", "RigSlot3", "RigSlot4", "RigSlot5", "RigSlot6", "RigSlot7", "SecondaryStorage", "ServiceSlot0", "ServiceSlot1", "ServiceSlot2", "ServiceSlot3", "ServiceSlot4", "ServiceSlot5", "ServiceSlot6", "ServiceSlot7", "ShipHangar", "ShipOffline", "Skill", "SkillInTraining", "SpecializedAmmoHold", "SpecializedCommandCenterHold", "SpecializedFuelBay", "SpecializedGasHold", "SpecializedIndustrialShipHold", "SpecializedLargeShipHold", "SpecializedMaterialBay", "SpecializedMediumShipHold", "SpecializedMineralHold", "SpecializedOreHold", "SpecializedPlanetaryCommoditiesHold", "SpecializedSalvageHold", "SpecializedShipHold", "SpecializedSmallShipHold", "StructureActive", "StructureFuel", "StructureInactive", "StructureOffline", "SubSystemBay", "SubSystemSlot0", "SubSystemSlot1", "SubSystemSlot2", "SubSystemSlot3", "SubSystemSlot4", "SubSystemSlot5", "SubSystemSlot6", "SubSystemSlot7", "Unlocked", "Wallet", "Wardrobe"])
      return false unless location_flag_validator.valid?(@location_flag)
      return false if @location_id.nil?
      return false if @logged_at.nil?
      password_type_validator = EnumAttributeValidator.new('String', ["config", "general"])
      return false unless password_type_validator.valid?(@password_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["add", "assemble", "configure", "enter_password", "lock", "move", "repackage", "set_name", "set_password", "unlock"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location_flag Object to be assigned
    def location_flag=(location_flag)
      validator = EnumAttributeValidator.new('String', ["AssetSafety", "AutoFit", "Bonus", "Booster", "BoosterBay", "Capsule", "Cargo", "CorpDeliveries", "CorpSAG1", "CorpSAG2", "CorpSAG3", "CorpSAG4", "CorpSAG5", "CorpSAG6", "CorpSAG7", "CrateLoot", "Deliveries", "DroneBay", "DustBattle", "DustDatabank", "FighterBay", "FighterTube0", "FighterTube1", "FighterTube2", "FighterTube3", "FighterTube4", "FleetHangar", "Hangar", "HangarAll", "HiSlot0", "HiSlot1", "HiSlot2", "HiSlot3", "HiSlot4", "HiSlot5", "HiSlot6", "HiSlot7", "HiddenModifiers", "Implant", "Impounded", "JunkyardReprocessed", "JunkyardTrashed", "LoSlot0", "LoSlot1", "LoSlot2", "LoSlot3", "LoSlot4", "LoSlot5", "LoSlot6", "LoSlot7", "Locked", "MedSlot0", "MedSlot1", "MedSlot2", "MedSlot3", "MedSlot4", "MedSlot5", "MedSlot6", "MedSlot7", "OfficeFolder", "Pilot", "PlanetSurface", "QuafeBay", "Reward", "RigSlot0", "RigSlot1", "RigSlot2", "RigSlot3", "RigSlot4", "RigSlot5", "RigSlot6", "RigSlot7", "SecondaryStorage", "ServiceSlot0", "ServiceSlot1", "ServiceSlot2", "ServiceSlot3", "ServiceSlot4", "ServiceSlot5", "ServiceSlot6", "ServiceSlot7", "ShipHangar", "ShipOffline", "Skill", "SkillInTraining", "SpecializedAmmoHold", "SpecializedCommandCenterHold", "SpecializedFuelBay", "SpecializedGasHold", "SpecializedIndustrialShipHold", "SpecializedLargeShipHold", "SpecializedMaterialBay", "SpecializedMediumShipHold", "SpecializedMineralHold", "SpecializedOreHold", "SpecializedPlanetaryCommoditiesHold", "SpecializedSalvageHold", "SpecializedShipHold", "SpecializedSmallShipHold", "StructureActive", "StructureFuel", "StructureInactive", "StructureOffline", "SubSystemBay", "SubSystemSlot0", "SubSystemSlot1", "SubSystemSlot2", "SubSystemSlot3", "SubSystemSlot4", "SubSystemSlot5", "SubSystemSlot6", "SubSystemSlot7", "Unlocked", "Wallet", "Wardrobe"])
      unless validator.valid?(location_flag)
        fail ArgumentError, "invalid value for 'location_flag', must be one of #{validator.allowable_values}."
      end
      @location_flag = location_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] password_type Object to be assigned
    def password_type=(password_type)
      validator = EnumAttributeValidator.new('String', ["config", "general"])
      unless validator.valid?(password_type)
        fail ArgumentError, "invalid value for 'password_type', must be one of #{validator.allowable_values}."
      end
      @password_type = password_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          character_id == o.character_id &&
          container_id == o.container_id &&
          container_type_id == o.container_type_id &&
          location_flag == o.location_flag &&
          location_id == o.location_id &&
          logged_at == o.logged_at &&
          new_config_bitmask == o.new_config_bitmask &&
          old_config_bitmask == o.old_config_bitmask &&
          password_type == o.password_type &&
          quantity == o.quantity &&
          type_id == o.type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, character_id, container_id, container_type_id, location_flag, location_id, logged_at, new_config_bitmask, old_config_bitmask, password_type, quantity, type_id].hash
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
