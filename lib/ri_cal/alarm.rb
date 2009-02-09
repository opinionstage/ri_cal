module RiCal
  # An Alarm component groups properties defining a reminder or alarm associated with an event or to-do
  # TODO: The Alarm component has complex cardinality restrictions depending on the value of the action property
  # i.e. audio, display, email, and proc alarms, this is currently not checked or enforced
  class Alarm < Component
    # BEGIN GENERATED ATTRIBUTE CODE

    # return the the ACTION property
    # which will be an instances of RiCal::TextValue
    # 
    # [purpose (from RFC 2445)]
    # This property defines the action to be invoked when an alarm is triggered
    # 
    # see RFC 2445 4.8.6.1 p 126
    def action_property
      @action_property
    end

    # set the ACTION property
    # property value should be an instance of RiCal::TextValue
    def action_property=(property_value)
      @action_property = property_value
    end

    # set the value of the ACTION property
    def action=(ruby_value)
      self.action_property= TextValue.convert(ruby_value)
    end

    # return the value of the ACTION property
    # which will be an instance of String
    def action
      value_of_property(action_property)
    end

    def action_property_from_string(line) # :nodoc:
      @action_property = TextValue.new(line)
    end


    # return the the DESCRIPTION property
    # which will be an instances of RiCal::TextValue
    # 
    # [purpose (from RFC 2445)]
    # This property provides a more complete description of the calendar component, than that provided by the "SUMMARY" property.
    # 
    # see RFC 2445 4.8.1.5 pp 81-82
    def description_property
      @description_property
    end

    # set the DESCRIPTION property
    # property value should be an instance of RiCal::TextValue
    def description_property=(property_value)
      @description_property = property_value
    end

    # set the value of the DESCRIPTION property
    def description=(ruby_value)
      self.description_property= TextValue.convert(ruby_value)
    end

    # return the value of the DESCRIPTION property
    # which will be an instance of String
    def description
      value_of_property(description_property)
    end

    def description_property_from_string(line) # :nodoc:
      @description_property = TextValue.new(line)
    end


    # return the the TRIGGER property
    # which will be an instances of RiCal::duration_or_utc_date_timeValue
    # 
    # [purpose (from RFC 2445)]
    # This property specifies when an alarm will trigger.
    # 
    # see RFC 2445 4.8.6.3 p 127-129
    def trigger_property
      @trigger_property
    end

    # set the TRIGGER property
    # property value should be an instance of RiCal::duration_or_utc_date_timeValue
    def trigger_property=(property_value)
      @trigger_property = property_value
    end

    # set the value of the TRIGGER property
    def trigger=(ruby_value)
      self.trigger_property= duration_or_utc_date_timeValue.convert(ruby_value)
    end

    # return the value of the TRIGGER property
    # which will be an instance of duration_or_utc_date_time
    def trigger
      value_of_property(trigger_property)
    end

    def trigger_property_from_string(line) # :nodoc:
      @trigger_property = duration_or_utc_date_timeValue.new(line)
    end


    # return the the DURATION property
    # which will be an instances of RiCal::DurationValue
    # 
    # [purpose (from RFC 2445)]
    # This property specifies a positive duration of time.
    # 
    # see RFC 2445 4.8.2.5 pp 94-95
    def duration_property
      @duration_property
    end

    # set the DURATION property
    # property value should be an instance of RiCal::DurationValue
    def duration_property=(property_value)
      @duration_property = property_value
    end

    # set the value of the DURATION property
    def duration=(ruby_value)
      self.duration_property= DurationValue.convert(ruby_value)
    end

    # return the value of the DURATION property
    # which will be an instance of Duration
    def duration
      value_of_property(duration_property)
    end

    def duration_property_from_string(line) # :nodoc:
      @duration_property = DurationValue.new(line)
    end


    # return the the REPEAT property
    # which will be an instances of RiCal::IntegerValue
    # 
    # [purpose (from RFC 2445)]
    # This property defines the number of times the alarm should be repeated, after the initial trigger.
    # 
    # see RFC 2445 4.8.6.2 p 126-127
    def repeat_property
      @repeat_property
    end

    # set the REPEAT property
    # property value should be an instance of RiCal::IntegerValue
    def repeat_property=(property_value)
      @repeat_property = property_value
    end

    # set the value of the REPEAT property
    def repeat=(ruby_value)
      self.repeat_property= IntegerValue.convert(ruby_value)
    end

    # return the value of the REPEAT property
    # which will be an instance of Integer
    def repeat
      value_of_property(repeat_property)
    end

    def repeat_property_from_string(line) # :nodoc:
      @repeat_property = IntegerValue.new(line)
    end


    # return the the SUMMARY property
    # which will be an instances of RiCal::TextValue
    # 
    # [purpose (from RFC 2445)]
    # This property defines a short summary or subject for the calendar component.
    # 
    # see RFC 2445 4.8.1.12 pp 89-90
    def summary_property
      @summary_property
    end

    # set the SUMMARY property
    # property value should be an instance of RiCal::TextValue
    def summary_property=(property_value)
      @summary_property = property_value
    end

    # set the value of the SUMMARY property
    def summary=(ruby_value)
      self.summary_property= TextValue.convert(ruby_value)
    end

    # return the value of the SUMMARY property
    # which will be an instance of String
    def summary
      value_of_property(summary_property)
    end

    def summary_property_from_string(line) # :nodoc:
      @summary_property = TextValue.new(line)
    end


    # return the the ATTENDEE property
    # which will be an array of instances of RiCal::CalAddressValue
    # 
    # [purpose (from RFC 2445)]
    # The property defines an 'Attendee' within a calendar component.
    # 
    # see RFC 2445 4.8.4.1 pp 102-104
    def attendee_property
      @attendee_property ||= []
    end

    # set the the ATTENDEE property
    # one or more instances of RiCal::CalAddressValue may be passed to this method
    def attendee_property=(*property_values)
      attendee_property= property_values
    end

    # set the value of the ATTENDEE property
    # one or more instances of CalAddress may be passed to this method
    def attendee=(*ruby_values)
      @attendee_property = ruby_values.map {|val| CalAddressValue.convert(val)}
    end

    # return the value of the ATTENDEE property
    # which will be an array of instances of CalAddress
    def attendee
      attendee_property.map {|prop| value_of_property(prop)}
    end

    def attendee_property_from_string(line) # :nodoc:
      attendee_property << CalAddressValue.new(line)
    end

    # return the the ATTACH property
    # which will be an array of instances of RiCal::UriValue
    # 
    # [purpose (from RFC 2445)]
    # The property provides the capability to associate a document object with a calendar component.
    # 
    # see RFC 2445 4.8.1.1 pp 77-78
    def attach_property
      @attach_property ||= []
    end

    # set the the ATTACH property
    # one or more instances of RiCal::UriValue may be passed to this method
    def attach_property=(*property_values)
      attach_property= property_values
    end

    # set the value of the ATTACH property
    # one or more instances of Uri may be passed to this method
    def attach=(*ruby_values)
      @attach_property = ruby_values.map {|val| UriValue.convert(val)}
    end

    # return the value of the ATTACH property
    # which will be an array of instances of Uri
    def attach
      attach_property.map {|prop| value_of_property(prop)}
    end

    def attach_property_from_string(line) # :nodoc:
      attach_property << UriValue.new(line)
    end

    def self.property_parser
      {"ACTION"=>:action_property_from_string, "ATTACH"=>:attach_property_from_string, "REPEAT"=>:repeat_property_from_string, "SUMMARY"=>:summary_property_from_string, "TRIGGER"=>:trigger_property_from_string, "ATTENDEE"=>:attendee_property_from_string, "DURATION"=>:duration_property_from_string, "DESCRIPTION"=>:description_property_from_string}
    end

    def mutual_exclusion_violation
      false
    end
    # END GENERATED ATTRIBUTE CODE

    def self.entity_name #:nodoc:
      "VALARM"
    end
  end

end
