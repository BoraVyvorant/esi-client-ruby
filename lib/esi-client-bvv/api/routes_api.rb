=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module ESI
  class RoutesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get route
    # Get the systems between origin and destination  ---  This route is cached for up to 86400 seconds
    # @param destination destination solar system ID
    # @param origin origin solar system ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :avoid avoid solar system ID(s)
    # @option opts [Array<Array<Integer>>] :connections connected solar system pairs
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :flag route security preference (default to shortest)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<Integer>]
    def get_route_origin_destination(destination, origin, opts = {})
      data, _status_code, _headers = get_route_origin_destination_with_http_info(destination, origin, opts)
      return data
    end

    # Get route
    # Get the systems between origin and destination  ---  This route is cached for up to 86400 seconds
    # @param destination destination solar system ID
    # @param origin origin solar system ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :avoid avoid solar system ID(s)
    # @option opts [Array<Array<Integer>>] :connections connected solar system pairs
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :flag route security preference
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_route_origin_destination_with_http_info(destination, origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.get_route_origin_destination ..."
      end
      # verify the required parameter 'destination' is set
      if @api_client.config.client_side_validation && destination.nil?
        fail ArgumentError, "Missing the required parameter 'destination' when calling RoutesApi.get_route_origin_destination"
      end
      # verify the required parameter 'origin' is set
      if @api_client.config.client_side_validation && origin.nil?
        fail ArgumentError, "Missing the required parameter 'origin' when calling RoutesApi.get_route_origin_destination"
      end
      if @api_client.config.client_side_validation && !opts[:'avoid'].nil? && opts[:'avoid'].length > 100
        fail ArgumentError, 'invalid value for "opts[:"avoid"]" when calling RoutesApi.get_route_origin_destination, number of items must be less than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'connections'].nil? && opts[:'connections'].length > 100
        fail ArgumentError, 'invalid value for "opts[:"connections"]" when calling RoutesApi.get_route_origin_destination, number of items must be less than or equal to 100.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && opts[:'flag'] && !['shortest', 'secure', 'insecure'].include?(opts[:'flag'])
        fail ArgumentError, 'invalid value for "flag", must be one of shortest, secure, insecure'
      end
      # resource path
      local_var_path = "/v1/route/{origin}/{destination}/".sub('{' + 'destination' + '}', destination.to_s).sub('{' + 'origin' + '}', origin.to_s)

      # query parameters
      query_params = {}
      query_params[:'avoid'] = @api_client.build_collection_param(opts[:'avoid'], :csv) if !opts[:'avoid'].nil?
      query_params[:'connections'] = @api_client.build_collection_param(opts[:'connections'], :csv) if !opts[:'connections'].nil?
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'flag'] = opts[:'flag'] if !opts[:'flag'].nil?

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
        @api_client.config.logger.debug "API called: RoutesApi#get_route_origin_destination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
