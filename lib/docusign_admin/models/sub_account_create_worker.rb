=begin
#Docusign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Admin
  class SubAccountCreateWorker
    # The target account being created
    attr_accessor :target_account

    # The subscription info to create the account
    attr_accessor :subscription_details

    # The create account work id.
    attr_accessor :asset_group_work_id

    # The asset group id the accounts belong to.
    attr_accessor :asset_group_id

    # The type of asset group work.
    attr_accessor :asset_group_work_type

    # The account creation status.
    attr_accessor :status

    # The order id created by the creation work.
    attr_accessor :order_id

    # The number of times the work has been attempted.
    attr_accessor :attempts

    # The date the account creation work is initiated.
    attr_accessor :created_date

    # The name of the initiator of the account creation work.
    attr_accessor :created_by_name

    # The email of the creator of the account creation work.
    attr_accessor :created_by_email

    # The message associated with the account creation work.
    attr_accessor :message

    # The processing failures if the work is in PendingError/ProcessingError status.
    attr_accessor :create_account_processing_failure_details

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
        :'target_account' => :'targetAccount',
        :'subscription_details' => :'subscriptionDetails',
        :'asset_group_work_id' => :'assetGroupWorkId',
        :'asset_group_id' => :'assetGroupId',
        :'asset_group_work_type' => :'assetGroupWorkType',
        :'status' => :'status',
        :'order_id' => :'orderId',
        :'attempts' => :'attempts',
        :'created_date' => :'createdDate',
        :'created_by_name' => :'createdByName',
        :'created_by_email' => :'createdByEmail',
        :'message' => :'message',
        :'create_account_processing_failure_details' => :'createAccountProcessingFailureDetails'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'target_account' => :'SubAccountCreateTargetAccount',
        :'subscription_details' => :'SubAccountCreateSubscriptionDetails',
        :'asset_group_work_id' => :'String',
        :'asset_group_id' => :'String',
        :'asset_group_work_type' => :'String',
        :'status' => :'String',
        :'order_id' => :'String',
        :'attempts' => :'Integer',
        :'created_date' => :'DateTime',
        :'created_by_name' => :'String',
        :'created_by_email' => :'String',
        :'message' => :'String',
        :'create_account_processing_failure_details' => :'SubAccountErrorDetails'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'targetAccount')
        self.target_account = attributes[:'targetAccount']
      end

      if attributes.has_key?(:'subscriptionDetails')
        self.subscription_details = attributes[:'subscriptionDetails']
      end

      if attributes.has_key?(:'assetGroupWorkId')
        self.asset_group_work_id = attributes[:'assetGroupWorkId']
      end

      if attributes.has_key?(:'assetGroupId')
        self.asset_group_id = attributes[:'assetGroupId']
      end

      if attributes.has_key?(:'assetGroupWorkType')
        self.asset_group_work_type = attributes[:'assetGroupWorkType']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'orderId')
        self.order_id = attributes[:'orderId']
      end

      if attributes.has_key?(:'attempts')
        self.attempts = attributes[:'attempts']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'createdByName')
        self.created_by_name = attributes[:'createdByName']
      end

      if attributes.has_key?(:'createdByEmail')
        self.created_by_email = attributes[:'createdByEmail']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'createAccountProcessingFailureDetails')
        self.create_account_processing_failure_details = attributes[:'createAccountProcessingFailureDetails']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @target_account.nil?
        invalid_properties.push('invalid value for "target_account", target_account cannot be nil.')
      end

      if @subscription_details.nil?
        invalid_properties.push('invalid value for "subscription_details", subscription_details cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @target_account.nil?
      return false if @subscription_details.nil?
      asset_group_work_type_validator = EnumAttributeValidator.new('String', ['Undefined', 'GroupAssetFulfillment', 'AccountAssetFulfillment', 'AccountAssetClone', 'AccountAssetCreate', 'SubscriptionSync'])
      return false unless asset_group_work_type_validator.valid?(@asset_group_work_type)
      status_validator = EnumAttributeValidator.new('String', ['Undefined', 'Pending', 'Processing', 'ProcessingOnHold', 'PendingError', 'ProcessingError', 'Completed', 'Canceled', 'PermanentFailure'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_group_work_type Object to be assigned
    def asset_group_work_type=(asset_group_work_type)
      validator = EnumAttributeValidator.new('String', ['Undefined', 'GroupAssetFulfillment', 'AccountAssetFulfillment', 'AccountAssetClone', 'AccountAssetCreate', 'SubscriptionSync'])
      unless validator.valid?(asset_group_work_type)
        fail ArgumentError, 'invalid value for "asset_group_work_type", must be one of #{validator.allowable_values}.'
      end
      @asset_group_work_type = asset_group_work_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['Undefined', 'Pending', 'Processing', 'ProcessingOnHold', 'PendingError', 'ProcessingError', 'Completed', 'Canceled', 'PermanentFailure'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          target_account == o.target_account &&
          subscription_details == o.subscription_details &&
          asset_group_work_id == o.asset_group_work_id &&
          asset_group_id == o.asset_group_id &&
          asset_group_work_type == o.asset_group_work_type &&
          status == o.status &&
          order_id == o.order_id &&
          attempts == o.attempts &&
          created_date == o.created_date &&
          created_by_name == o.created_by_name &&
          created_by_email == o.created_by_email &&
          message == o.message &&
          create_account_processing_failure_details == o.create_account_processing_failure_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [target_account, subscription_details, asset_group_work_id, asset_group_id, asset_group_work_type, status, order_id, attempts, created_date, created_by_name, created_by_email, message, create_account_processing_failure_details].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = DocuSign_Admin.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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