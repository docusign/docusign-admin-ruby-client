=begin
#Docusign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Admin
  class OrganizationExportResponse
    attr_accessor :id

    attr_accessor :type

    attr_accessor :requestor

    attr_accessor :created

    attr_accessor :last_modified

    attr_accessor :completed

    attr_accessor :expires

    attr_accessor :status

    attr_accessor :selected_accounts

    attr_accessor :selected_domains

    attr_accessor :metadata_url

    attr_accessor :percent_completed

    attr_accessor :number_rows

    attr_accessor :size_bytes

    attr_accessor :results

    attr_accessor :success

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'requestor' => :'requestor',
        :'created' => :'created',
        :'last_modified' => :'last_modified',
        :'completed' => :'completed',
        :'expires' => :'expires',
        :'status' => :'status',
        :'selected_accounts' => :'selected_accounts',
        :'selected_domains' => :'selected_domains',
        :'metadata_url' => :'metadata_url',
        :'percent_completed' => :'percent_completed',
        :'number_rows' => :'number_rows',
        :'size_bytes' => :'size_bytes',
        :'results' => :'results',
        :'success' => :'success'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'requestor' => :'OrganizationExportRequestorResponse',
        :'created' => :'DateTime',
        :'last_modified' => :'DateTime',
        :'completed' => :'DateTime',
        :'expires' => :'DateTime',
        :'status' => :'String',
        :'selected_accounts' => :'Array<OrgExportSelectedAccount>',
        :'selected_domains' => :'Array<OrgExportSelectedDomain>',
        :'metadata_url' => :'String',
        :'percent_completed' => :'Integer',
        :'number_rows' => :'Integer',
        :'size_bytes' => :'Integer',
        :'results' => :'Array<OrganizationExportTaskResponse>',
        :'success' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'requestor')
        self.requestor = attributes[:'requestor']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.has_key?(:'completed')
        self.completed = attributes[:'completed']
      end

      if attributes.has_key?(:'expires')
        self.expires = attributes[:'expires']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'selected_accounts')
        if (value = attributes[:'selected_accounts']).is_a?(Array)
          self.selected_accounts = value
        end
      end

      if attributes.has_key?(:'selected_domains')
        if (value = attributes[:'selected_domains']).is_a?(Array)
          self.selected_domains = value
        end
      end

      if attributes.has_key?(:'metadata_url')
        self.metadata_url = attributes[:'metadata_url']
      end

      if attributes.has_key?(:'percent_completed')
        self.percent_completed = attributes[:'percent_completed']
      end

      if attributes.has_key?(:'number_rows')
        self.number_rows = attributes[:'number_rows']
      end

      if attributes.has_key?(:'size_bytes')
        self.size_bytes = attributes[:'size_bytes']
      end

      if attributes.has_key?(:'results')
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end

      if attributes.has_key?(:'success')
        self.success = attributes[:'success']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          requestor == o.requestor &&
          created == o.created &&
          last_modified == o.last_modified &&
          completed == o.completed &&
          expires == o.expires &&
          status == o.status &&
          selected_accounts == o.selected_accounts &&
          selected_domains == o.selected_domains &&
          metadata_url == o.metadata_url &&
          percent_completed == o.percent_completed &&
          number_rows == o.number_rows &&
          size_bytes == o.size_bytes &&
          results == o.results &&
          success == o.success
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, requestor, created, last_modified, completed, expires, status, selected_accounts, selected_domains, metadata_url, percent_completed, number_rows, size_bytes, results, success].hash
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
