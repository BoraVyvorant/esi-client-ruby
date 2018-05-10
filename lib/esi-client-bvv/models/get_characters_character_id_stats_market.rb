=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module ESI
  # market object
  class GetCharactersCharacterIdStatsMarket
    # accept_contracts_courier integer
    attr_accessor :accept_contracts_courier

    # accept_contracts_item_exchange integer
    attr_accessor :accept_contracts_item_exchange

    # buy_orders_placed integer
    attr_accessor :buy_orders_placed

    # cancel_market_order integer
    attr_accessor :cancel_market_order

    # create_contracts_auction integer
    attr_accessor :create_contracts_auction

    # create_contracts_courier integer
    attr_accessor :create_contracts_courier

    # create_contracts_item_exchange integer
    attr_accessor :create_contracts_item_exchange

    # deliver_courier_contract integer
    attr_accessor :deliver_courier_contract

    # isk_gained integer
    attr_accessor :isk_gained

    # isk_spent integer
    attr_accessor :isk_spent

    # modify_market_order integer
    attr_accessor :modify_market_order

    # search_contracts integer
    attr_accessor :search_contracts

    # sell_orders_placed integer
    attr_accessor :sell_orders_placed


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accept_contracts_courier' => :'accept_contracts_courier',
        :'accept_contracts_item_exchange' => :'accept_contracts_item_exchange',
        :'buy_orders_placed' => :'buy_orders_placed',
        :'cancel_market_order' => :'cancel_market_order',
        :'create_contracts_auction' => :'create_contracts_auction',
        :'create_contracts_courier' => :'create_contracts_courier',
        :'create_contracts_item_exchange' => :'create_contracts_item_exchange',
        :'deliver_courier_contract' => :'deliver_courier_contract',
        :'isk_gained' => :'isk_gained',
        :'isk_spent' => :'isk_spent',
        :'modify_market_order' => :'modify_market_order',
        :'search_contracts' => :'search_contracts',
        :'sell_orders_placed' => :'sell_orders_placed'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accept_contracts_courier' => :'Integer',
        :'accept_contracts_item_exchange' => :'Integer',
        :'buy_orders_placed' => :'Integer',
        :'cancel_market_order' => :'Integer',
        :'create_contracts_auction' => :'Integer',
        :'create_contracts_courier' => :'Integer',
        :'create_contracts_item_exchange' => :'Integer',
        :'deliver_courier_contract' => :'Integer',
        :'isk_gained' => :'Integer',
        :'isk_spent' => :'Integer',
        :'modify_market_order' => :'Integer',
        :'search_contracts' => :'Integer',
        :'sell_orders_placed' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accept_contracts_courier')
        self.accept_contracts_courier = attributes[:'accept_contracts_courier']
      end

      if attributes.has_key?(:'accept_contracts_item_exchange')
        self.accept_contracts_item_exchange = attributes[:'accept_contracts_item_exchange']
      end

      if attributes.has_key?(:'buy_orders_placed')
        self.buy_orders_placed = attributes[:'buy_orders_placed']
      end

      if attributes.has_key?(:'cancel_market_order')
        self.cancel_market_order = attributes[:'cancel_market_order']
      end

      if attributes.has_key?(:'create_contracts_auction')
        self.create_contracts_auction = attributes[:'create_contracts_auction']
      end

      if attributes.has_key?(:'create_contracts_courier')
        self.create_contracts_courier = attributes[:'create_contracts_courier']
      end

      if attributes.has_key?(:'create_contracts_item_exchange')
        self.create_contracts_item_exchange = attributes[:'create_contracts_item_exchange']
      end

      if attributes.has_key?(:'deliver_courier_contract')
        self.deliver_courier_contract = attributes[:'deliver_courier_contract']
      end

      if attributes.has_key?(:'isk_gained')
        self.isk_gained = attributes[:'isk_gained']
      end

      if attributes.has_key?(:'isk_spent')
        self.isk_spent = attributes[:'isk_spent']
      end

      if attributes.has_key?(:'modify_market_order')
        self.modify_market_order = attributes[:'modify_market_order']
      end

      if attributes.has_key?(:'search_contracts')
        self.search_contracts = attributes[:'search_contracts']
      end

      if attributes.has_key?(:'sell_orders_placed')
        self.sell_orders_placed = attributes[:'sell_orders_placed']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accept_contracts_courier == o.accept_contracts_courier &&
          accept_contracts_item_exchange == o.accept_contracts_item_exchange &&
          buy_orders_placed == o.buy_orders_placed &&
          cancel_market_order == o.cancel_market_order &&
          create_contracts_auction == o.create_contracts_auction &&
          create_contracts_courier == o.create_contracts_courier &&
          create_contracts_item_exchange == o.create_contracts_item_exchange &&
          deliver_courier_contract == o.deliver_courier_contract &&
          isk_gained == o.isk_gained &&
          isk_spent == o.isk_spent &&
          modify_market_order == o.modify_market_order &&
          search_contracts == o.search_contracts &&
          sell_orders_placed == o.sell_orders_placed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [accept_contracts_courier, accept_contracts_item_exchange, buy_orders_placed, cancel_market_order, create_contracts_auction, create_contracts_courier, create_contracts_item_exchange, deliver_courier_contract, isk_gained, isk_spent, modify_market_order, search_contracts, sell_orders_placed].hash
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
