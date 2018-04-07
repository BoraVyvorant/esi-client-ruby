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
  class GetCorporationsCorporationIdBlueprints200Ok
    # Unique ID for this item.
    attr_accessor :item_id

    # type_id integer
    attr_accessor :type_id

    # References a solar system, station or item_id if this blueprint is located within a container.
    attr_accessor :location_id

    # A range of numbers with a minimum of -2 and no maximum value where -1 is an original and -2 is a copy. It can be a positive integer if it is a stack of blueprint originals fresh from the market (e.g. no activities performed on them yet).
    attr_accessor :quantity

    # Time Efficiency Level of the blueprint.
    attr_accessor :time_efficiency

    # Material Efficiency Level of the blueprint.
    attr_accessor :material_efficiency

    # Number of runs remaining if the blueprint is a copy, -1 if it is an original.
    attr_accessor :runs

    # Type of the location_id
    attr_accessor :location_flag

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
        :'item_id' => :'item_id',
        :'type_id' => :'type_id',
        :'location_id' => :'location_id',
        :'quantity' => :'quantity',
        :'time_efficiency' => :'time_efficiency',
        :'material_efficiency' => :'material_efficiency',
        :'runs' => :'runs',
        :'location_flag' => :'location_flag'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'item_id' => :'Integer',
        :'type_id' => :'Integer',
        :'location_id' => :'Integer',
        :'quantity' => :'Integer',
        :'time_efficiency' => :'Integer',
        :'material_efficiency' => :'Integer',
        :'runs' => :'Integer',
        :'location_flag' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'time_efficiency')
        self.time_efficiency = attributes[:'time_efficiency']
      end

      if attributes.has_key?(:'material_efficiency')
        self.material_efficiency = attributes[:'material_efficiency']
      end

      if attributes.has_key?(:'runs')
        self.runs = attributes[:'runs']
      end

      if attributes.has_key?(:'location_flag')
        self.location_flag = attributes[:'location_flag']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @item_id.nil?
        invalid_properties.push("invalid value for 'item_id', item_id cannot be nil.")
      end

      if @type_id.nil?
        invalid_properties.push("invalid value for 'type_id', type_id cannot be nil.")
      end

      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @quantity < -2
        invalid_properties.push("invalid value for 'quantity', must be greater than or equal to -2.")
      end

      if @time_efficiency.nil?
        invalid_properties.push("invalid value for 'time_efficiency', time_efficiency cannot be nil.")
      end

      if @time_efficiency > 20
        invalid_properties.push("invalid value for 'time_efficiency', must be smaller than or equal to 20.")
      end

      if @time_efficiency < 0
        invalid_properties.push("invalid value for 'time_efficiency', must be greater than or equal to 0.")
      end

      if @material_efficiency.nil?
        invalid_properties.push("invalid value for 'material_efficiency', material_efficiency cannot be nil.")
      end

      if @material_efficiency > 25
        invalid_properties.push("invalid value for 'material_efficiency', must be smaller than or equal to 25.")
      end

      if @material_efficiency < 0
        invalid_properties.push("invalid value for 'material_efficiency', must be greater than or equal to 0.")
      end

      if @runs.nil?
        invalid_properties.push("invalid value for 'runs', runs cannot be nil.")
      end

      if @runs < -1
        invalid_properties.push("invalid value for 'runs', must be greater than or equal to -1.")
      end

      if @location_flag.nil?
        invalid_properties.push("invalid value for 'location_flag', location_flag cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_id.nil?
      return false if @type_id.nil?
      return false if @location_id.nil?
      return false if @quantity.nil?
      return false if @quantity < -2
      return false if @time_efficiency.nil?
      return false if @time_efficiency > 20
      return false if @time_efficiency < 0
      return false if @material_efficiency.nil?
      return false if @material_efficiency > 25
      return false if @material_efficiency < 0
      return false if @runs.nil?
      return false if @runs < -1
      return false if @location_flag.nil?
      location_flag_validator = EnumAttributeValidator.new('String', ["AssetSafety", "AutoFit", "Bonus", "Booster", "BoosterBay", "Capsule", "Cargo", "CorpDeliveries", "CorpSAG1", "CorpSAG2", "CorpSAG3", "CorpSAG4", "CorpSAG5", "CorpSAG6", "CorpSAG7", "CrateLoot", "Deliveries", "DroneBay", "DustBattle", "DustDatabank", "FighterBay", "FighterTube0", "FighterTube1", "FighterTube2", "FighterTube3", "FighterTube4", "FleetHangar", "Hangar", "HangarAll", "HiSlot0", "HiSlot1", "HiSlot2", "HiSlot3", "HiSlot4", "HiSlot5", "HiSlot6", "HiSlot7", "HiddenModifiers", "Implant", "Impounded", "JunkyardReprocessed", "JunkyardTrashed", "LoSlot0", "LoSlot1", "LoSlot2", "LoSlot3", "LoSlot4", "LoSlot5", "LoSlot6", "LoSlot7", "Locked", "MedSlot0", "MedSlot1", "MedSlot2", "MedSlot3", "MedSlot4", "MedSlot5", "MedSlot6", "MedSlot7", "OfficeFolder", "Pilot", "PlanetSurface", "QuafeBay", "Reward", "RigSlot0", "RigSlot1", "RigSlot2", "RigSlot3", "RigSlot4", "RigSlot5", "RigSlot6", "RigSlot7", "SecondaryStorage", "ServiceSlot0", "ServiceSlot1", "ServiceSlot2", "ServiceSlot3", "ServiceSlot4", "ServiceSlot5", "ServiceSlot6", "ServiceSlot7", "ShipHangar", "ShipOffline", "Skill", "SkillInTraining", "SpecializedAmmoHold", "SpecializedCommandCenterHold", "SpecializedFuelBay", "SpecializedGasHold", "SpecializedIndustrialShipHold", "SpecializedLargeShipHold", "SpecializedMaterialBay", "SpecializedMediumShipHold", "SpecializedMineralHold", "SpecializedOreHold", "SpecializedPlanetaryCommoditiesHold", "SpecializedSalvageHold", "SpecializedShipHold", "SpecializedSmallShipHold", "StructureActive", "StructureFuel", "StructureInactive", "StructureOffline", "SubSystemBay", "SubSystemSlot0", "SubSystemSlot1", "SubSystemSlot2", "SubSystemSlot3", "SubSystemSlot4", "SubSystemSlot5", "SubSystemSlot6", "SubSystemSlot7", "Unlocked", "Wallet", "Wardrobe"])
      return false unless location_flag_validator.valid?(@location_flag)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, "quantity cannot be nil"
      end

      if quantity < -2
        fail ArgumentError, "invalid value for 'quantity', must be greater than or equal to -2."
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] time_efficiency Value to be assigned
    def time_efficiency=(time_efficiency)
      if time_efficiency.nil?
        fail ArgumentError, "time_efficiency cannot be nil"
      end

      if time_efficiency > 20
        fail ArgumentError, "invalid value for 'time_efficiency', must be smaller than or equal to 20."
      end

      if time_efficiency < 0
        fail ArgumentError, "invalid value for 'time_efficiency', must be greater than or equal to 0."
      end

      @time_efficiency = time_efficiency
    end

    # Custom attribute writer method with validation
    # @param [Object] material_efficiency Value to be assigned
    def material_efficiency=(material_efficiency)
      if material_efficiency.nil?
        fail ArgumentError, "material_efficiency cannot be nil"
      end

      if material_efficiency > 25
        fail ArgumentError, "invalid value for 'material_efficiency', must be smaller than or equal to 25."
      end

      if material_efficiency < 0
        fail ArgumentError, "invalid value for 'material_efficiency', must be greater than or equal to 0."
      end

      @material_efficiency = material_efficiency
    end

    # Custom attribute writer method with validation
    # @param [Object] runs Value to be assigned
    def runs=(runs)
      if runs.nil?
        fail ArgumentError, "runs cannot be nil"
      end

      if runs < -1
        fail ArgumentError, "invalid value for 'runs', must be greater than or equal to -1."
      end

      @runs = runs
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_id == o.item_id &&
          type_id == o.type_id &&
          location_id == o.location_id &&
          quantity == o.quantity &&
          time_efficiency == o.time_efficiency &&
          material_efficiency == o.material_efficiency &&
          runs == o.runs &&
          location_flag == o.location_flag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [item_id, type_id, location_id, quantity, time_efficiency, material_efficiency, runs, location_flag].hash
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
