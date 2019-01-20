=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module ESI
  class WarsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List wars
    # Return a list of wars  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :max_war_id Only return wars with ID smaller than this
    # @return [Array<Integer>]
    def get_wars(opts = {})
      data, _status_code, _headers = get_wars_with_http_info(opts)
      return data
    end

    # List wars
    # Return a list of wars  ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :max_war_id Only return wars with ID smaller than this
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_wars_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WarsApi.get_wars ..."
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/wars/"

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'max_war_id'] = opts[:'max_war_id'] if !opts[:'max_war_id'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WarsApi#get_wars\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get war information
    # Return details about a war  ---  This route is cached for up to 3600 seconds
    # @param war_id ID for a war
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetWarsWarIdOk]
    def get_wars_war_id(war_id, opts = {})
      data, _status_code, _headers = get_wars_war_id_with_http_info(war_id, opts)
      return data
    end

    # Get war information
    # Return details about a war  ---  This route is cached for up to 3600 seconds
    # @param war_id ID for a war
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetWarsWarIdOk, Fixnum, Hash)>] GetWarsWarIdOk data, response status code and response headers
    def get_wars_war_id_with_http_info(war_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WarsApi.get_wars_war_id ..."
      end
      # verify the required parameter 'war_id' is set
      if @api_client.config.client_side_validation && war_id.nil?
        fail ArgumentError, "Missing the required parameter 'war_id' when calling WarsApi.get_wars_war_id"
      end
      if @api_client.config.client_side_validation && war_id < 1
        fail ArgumentError, 'invalid value for "war_id" when calling WarsApi.get_wars_war_id, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/v1/wars/{war_id}/".sub('{' + 'war_id' + '}', war_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetWarsWarIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WarsApi#get_wars_war_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List kills for a war
    # Return a list of kills related to a war  ---  This route is cached for up to 3600 seconds
    # @param war_id A valid war ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @return [Array<GetWarsWarIdKillmails200Ok>]
    def get_wars_war_id_killmails(war_id, opts = {})
      data, _status_code, _headers = get_wars_war_id_killmails_with_http_info(war_id, opts)
      return data
    end

    # List kills for a war
    # Return a list of kills related to a war  ---  This route is cached for up to 3600 seconds
    # @param war_id A valid war ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @return [Array<(Array<GetWarsWarIdKillmails200Ok>, Fixnum, Hash)>] Array<GetWarsWarIdKillmails200Ok> data, response status code and response headers
    def get_wars_war_id_killmails_with_http_info(war_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WarsApi.get_wars_war_id_killmails ..."
      end
      # verify the required parameter 'war_id' is set
      if @api_client.config.client_side_validation && war_id.nil?
        fail ArgumentError, "Missing the required parameter 'war_id' when calling WarsApi.get_wars_war_id_killmails"
      end
      if @api_client.config.client_side_validation && war_id < 1
        fail ArgumentError, 'invalid value for "war_id" when calling WarsApi.get_wars_war_id_killmails, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WarsApi.get_wars_war_id_killmails, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/v1/wars/{war_id}/killmails/".sub('{' + 'war_id' + '}', war_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetWarsWarIdKillmails200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WarsApi#get_wars_war_id_killmails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
