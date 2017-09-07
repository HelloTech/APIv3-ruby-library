=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SendinblueApiv3

  class CreateEmailCampaign
    # Tag of the campaign
    attr_accessor :tag

    attr_accessor :sender

    # Name of the campaign
    attr_accessor :name

    # Mandatory if htmlUrl is empty. Body of the message (HTML)
    attr_accessor :html_content

    # Mandatory if htmlContent is empty. Url to the message (HTML)
    attr_accessor :html_url

    # Sending date and time (YYYY-MM-DD HH:mm:ss)
    attr_accessor :scheduled_at

    # Subject of the campaign
    attr_accessor :subject

    # Email on which the campaign recipients will be able to reply to
    attr_accessor :reply_to

    # To personalize the «To» Field, e.g. if you want to include the first name and last name of your recipient, use [FNAME] [LNAME]. These attributes must already exist in your contact database
    attr_accessor :to_field

    attr_accessor :recipients

    # Absolute url of the attachment (no local file). Extensions allowed xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff and rtf
    attr_accessor :attachment_url

    # Use true to embedded the images in your email. Final size of the email should be less than 4MB. Campaigns with embedded images can not be sent to more than 5000 contacts
    attr_accessor :inline_image_activation

    # Use true to enable the mirror link
    attr_accessor :mirror_active

    # For trigger campagins use false to make sure a contact receives the same campaign only once
    attr_accessor :recurring

    # Type of the campaign
    attr_accessor :type

    # Footer of the email campaign
    attr_accessor :footer

    # Header of the email campaign
    attr_accessor :header

    # Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed
    attr_accessor :utm_campaign

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
        :'tag' => :'tag',
        :'sender' => :'sender',
        :'name' => :'name',
        :'html_content' => :'htmlContent',
        :'html_url' => :'htmlUrl',
        :'scheduled_at' => :'scheduledAt',
        :'subject' => :'subject',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'recipients' => :'recipients',
        :'attachment_url' => :'attachmentUrl',
        :'inline_image_activation' => :'inlineImageActivation',
        :'mirror_active' => :'mirrorActive',
        :'recurring' => :'recurring',
        :'type' => :'type',
        :'footer' => :'footer',
        :'header' => :'header',
        :'utm_campaign' => :'utmCampaign'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tag' => :'String',
        :'sender' => :'CreateEmailCampaignSender',
        :'name' => :'String',
        :'html_content' => :'String',
        :'html_url' => :'String',
        :'scheduled_at' => :'String',
        :'subject' => :'String',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'recipients' => :'CreateEmailCampaignRecipients',
        :'attachment_url' => :'String',
        :'inline_image_activation' => :'BOOLEAN',
        :'mirror_active' => :'BOOLEAN',
        :'recurring' => :'BOOLEAN',
        :'type' => :'String',
        :'footer' => :'String',
        :'header' => :'String',
        :'utm_campaign' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'htmlContent')
        self.html_content = attributes[:'htmlContent']
      end

      if attributes.has_key?(:'htmlUrl')
        self.html_url = attributes[:'htmlUrl']
      end

      if attributes.has_key?(:'scheduledAt')
        self.scheduled_at = attributes[:'scheduledAt']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'replyTo')
        self.reply_to = attributes[:'replyTo']
      end

      if attributes.has_key?(:'toField')
        self.to_field = attributes[:'toField']
      end

      if attributes.has_key?(:'recipients')
        self.recipients = attributes[:'recipients']
      end

      if attributes.has_key?(:'attachmentUrl')
        self.attachment_url = attributes[:'attachmentUrl']
      end

      if attributes.has_key?(:'inlineImageActivation')
        self.inline_image_activation = attributes[:'inlineImageActivation']
      else
        self.inline_image_activation = false
      end

      if attributes.has_key?(:'mirrorActive')
        self.mirror_active = attributes[:'mirrorActive']
      end

      if attributes.has_key?(:'recurring')
        self.recurring = attributes[:'recurring']
      else
        self.recurring = false
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'footer')
        self.footer = attributes[:'footer']
      end

      if attributes.has_key?(:'header')
        self.header = attributes[:'header']
      end

      if attributes.has_key?(:'utmCampaign')
        self.utm_campaign = attributes[:'utmCampaign']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if !@scheduled_at.nil? && @scheduled_at !~ Regexp.new(/YYYY-MM-DD HH:mm:ss/)
        invalid_properties.push("invalid value for 'scheduled_at', must conform to the pattern /YYYY-MM-DD HH:mm:ss/.")
      end

      if @subject.nil?
        invalid_properties.push("invalid value for 'subject', subject cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if !@scheduled_at.nil? && @scheduled_at !~ Regexp.new(/YYYY-MM-DD HH:mm:ss/)
      return false if @subject.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] scheduled_at Value to be assigned
    def scheduled_at=(scheduled_at)

      if !scheduled_at.nil? && scheduled_at !~ Regexp.new(/YYYY-MM-DD HH:mm:ss/)
        fail ArgumentError, "invalid value for 'scheduled_at', must conform to the pattern /YYYY-MM-DD HH:mm:ss/."
      end

      @scheduled_at = scheduled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tag == o.tag &&
          sender == o.sender &&
          name == o.name &&
          html_content == o.html_content &&
          html_url == o.html_url &&
          scheduled_at == o.scheduled_at &&
          subject == o.subject &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          recipients == o.recipients &&
          attachment_url == o.attachment_url &&
          inline_image_activation == o.inline_image_activation &&
          mirror_active == o.mirror_active &&
          recurring == o.recurring &&
          type == o.type &&
          footer == o.footer &&
          header == o.header &&
          utm_campaign == o.utm_campaign
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tag, sender, name, html_content, html_url, scheduled_at, subject, reply_to, to_field, recipients, attachment_url, inline_image_activation, mirror_active, recurring, type, footer, header, utm_campaign].hash
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
        temp_model = SendinblueApiv3.const_get(type).new
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