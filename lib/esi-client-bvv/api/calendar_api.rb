=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module ESI
  class CalendarApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List calendar event summaries
    # Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event.  ---  This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :from_event The event ID to retrieve events from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdCalendar200Ok>]
    def get_characters_character_id_calendar(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_calendar_with_http_info(character_id, opts)
      return data
    end

    # List calendar event summaries
    # Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event.  ---  This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :from_event The event ID to retrieve events from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdCalendar200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdCalendar200Ok> data, response status code and response headers
    def get_characters_character_id_calendar_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.get_characters_character_id_calendar ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.get_characters_character_id_calendar"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling CalendarApi.get_characters_character_id_calendar, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/calendar/".sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'from_event'] = opts[:'from_event'] if !opts[:'from_event'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdCalendar200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#get_characters_character_id_calendar\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an event
    # Get all the information for a specific event  ---  This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [GetCharactersCharacterIdCalendarEventIdOk]
    def get_characters_character_id_calendar_event_id(character_id, event_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts)
      return data
    end

    # Get an event
    # Get all the information for a specific event  ---  This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(GetCharactersCharacterIdCalendarEventIdOk, Fixnum, Hash)>] GetCharactersCharacterIdCalendarEventIdOk data, response status code and response headers
    def get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.get_characters_character_id_calendar_event_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.get_characters_character_id_calendar_event_id"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling CalendarApi.get_characters_character_id_calendar_event_id, must be greater than or equal to 1.'
      end

      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling CalendarApi.get_characters_character_id_calendar_event_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v3/characters/{character_id}/calendar/{event_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'event_id' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCharactersCharacterIdCalendarEventIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#get_characters_character_id_calendar_event_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get attendees
    # Get all invited attendees for a given event  ---  This route is cached for up to 600 seconds
    # @param character_id An EVE character ID
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>]
    def get_characters_character_id_calendar_event_id_attendees(character_id, event_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, opts)
      return data
    end

    # Get attendees
    # Get all invited attendees for a given event  ---  This route is cached for up to 600 seconds
    # @param character_id An EVE character ID
    # @param event_id The id of the event requested
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok> data, response status code and response headers
    def get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.get_characters_character_id_calendar_event_id_attendees ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.get_characters_character_id_calendar_event_id_attendees"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling CalendarApi.get_characters_character_id_calendar_event_id_attendees, must be greater than or equal to 1.'
      end

      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling CalendarApi.get_characters_character_id_calendar_event_id_attendees"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/characters/{character_id}/calendar/{event_id}/attendees/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'event_id' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#get_characters_character_id_calendar_event_id_attendees\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Respond to an event
    # Set your response status to an event  --- 
    # @param character_id An EVE character ID
    # @param event_id The ID of the event requested
    # @param response The response value to set, overriding current value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [nil]
    def put_characters_character_id_calendar_event_id(character_id, event_id, response, opts = {})
      put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts)
      return nil
    end

    # Respond to an event
    # Set your response status to an event  --- 
    # @param character_id An EVE character ID
    # @param event_id The ID of the event requested
    # @param response The response value to set, overriding current value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarApi.put_characters_character_id_calendar_event_id ..."
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling CalendarApi.put_characters_character_id_calendar_event_id"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling CalendarApi.put_characters_character_id_calendar_event_id, must be greater than or equal to 1.'
      end

      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling CalendarApi.put_characters_character_id_calendar_event_id"
      end
      # verify the required parameter 'response' is set
      if @api_client.config.client_side_validation && response.nil?
        fail ArgumentError, "Missing the required parameter 'response' when calling CalendarApi.put_characters_character_id_calendar_event_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v3/characters/{character_id}/calendar/{event_id}/".sub('{' + 'character_id' + '}', character_id.to_s).sub('{' + 'event_id' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(response)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarApi#put_characters_character_id_calendar_event_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
