=begin
#Maestro API

#Maestro authors and executes experiences that allow non-coders the ability to define Simple Business Process without having to write code and to deploy them seamlessly without having to have development expertise

OpenAPI spec version: 1.0.0
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Maestro

  class GetWorkflowDefinitionOptions
    # deployed workflow definition metadata object id
    attr_accessor :last_deployed_id

    def self.default
      @@default ||= GetWorkflowDefinitionOptions.new
    end
  end

  class GetWorkflowDefinitionsOptions
    # workflow definition metadata status
    attr_accessor :status

    def self.default
      @@default ||= GetWorkflowDefinitionsOptions.new
    end
  end


  class WorkflowManagementApi
    attr_accessor :api_client

    def initialize(api_client = WorkflowManagementApi.default)
      @api_client = api_client
    end

    # Creates a new workflow definition.
    # Creates a new workflow definition.
    # @param account_id Account ID
    # @param body Request Body to create a new workflow definition. 
    # @return [NewOrUpdatedWorkflowDefinitionResponse]
    def create_workflow_definition(account_id, body)
      data, _status_code, _headers = create_workflow_definition_with_http_info(account_id,  body)
      return data
    end

    # Creates a new workflow definition.
    # Creates a new workflow definition.
    # @param account_id Account ID
    # @param body Request Body to create a new workflow definition. 
    # @return [Array<(NewOrUpdatedWorkflowDefinitionResponse, Fixnum, Hash)>] NewOrUpdatedWorkflowDefinitionResponse data, response status code and response headers
    def create_workflow_definition_with_http_info(account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.create_workflow_definition ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.create_workflow_definition" if account_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling WorkflowManagementApi.create_workflow_definition" if body.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NewOrUpdatedWorkflowDefinitionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#create_workflow_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a workflow definition.
    # Deletes a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @return [WorkflowDeleteResponse]
    def delete_workflow_definition(account_id, workflow_definition_id)
      data, _status_code, _headers = delete_workflow_definition_with_http_info(account_id, workflow_definition_id)
      return data
    end

    # Deletes a workflow definition.
    # Deletes a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @return [Array<(WorkflowDeleteResponse, Fixnum, Hash)>] WorkflowDeleteResponse data, response status code and response headers
    def delete_workflow_definition_with_http_info(account_id, workflow_definition_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.delete_workflow_definition ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.delete_workflow_definition" if account_id.nil?
      # verify the required parameter 'workflow_definition_id' is set
      fail ArgumentError, "Missing the required parameter 'workflow_definition_id' when calling WorkflowManagementApi.delete_workflow_definition" if workflow_definition_id.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions/{workflowDefinitionId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workflowDefinitionId' + '}', workflow_definition_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowDeleteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#delete_workflow_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workflow Definition
    # Returns a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param DocuSign_Maestro::GetWorkflowDefinitionOptions Options for modifying the behavior of the function.
    # @return [WorkflowDefinitionWithId]
    def get_workflow_definition(account_id, workflow_definition_id, options = DocuSign_Maestro::GetWorkflowDefinitionOptions.default)
      data, _status_code, _headers = get_workflow_definition_with_http_info(account_id, workflow_definition_id, options)
      return data
    end

    # Get Workflow Definition
    # Returns a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param DocuSign_Maestro::GetWorkflowDefinitionOptions Options for modifying the behavior of the function.
    # @return [Array<(WorkflowDefinitionWithId, Fixnum, Hash)>] WorkflowDefinitionWithId data, response status code and response headers
    def get_workflow_definition_with_http_info(account_id, workflow_definition_id, options = DocuSign_Maestro::GetWorkflowDefinitionOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.get_workflow_definition ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.get_workflow_definition" if account_id.nil?
      # verify the required parameter 'workflow_definition_id' is set
      fail ArgumentError, "Missing the required parameter 'workflow_definition_id' when calling WorkflowManagementApi.get_workflow_definition" if workflow_definition_id.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions/{workflowDefinitionId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workflowDefinitionId' + '}', workflow_definition_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'lastDeployedId'] = options.last_deployed_id if !options.last_deployed_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'WorkflowDefinitionWithId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#get_workflow_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets configuration instances
    # Returns a list of configuration instances for a workflow definition
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @return [GetConfigurationInstancesResponse]
    def get_workflow_definition_config_instances(account_id, workflow_definition_id)
      data, _status_code, _headers = get_workflow_definition_config_instances_with_http_info(account_id, workflow_definition_id)
      return data
    end

    # Gets configuration instances
    # Returns a list of configuration instances for a workflow definition
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @return [Array<(GetConfigurationInstancesResponse, Fixnum, Hash)>] GetConfigurationInstancesResponse data, response status code and response headers
    def get_workflow_definition_config_instances_with_http_info(account_id, workflow_definition_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.get_workflow_definition_config_instances ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.get_workflow_definition_config_instances" if account_id.nil?
      # verify the required parameter 'workflow_definition_id' is set
      fail ArgumentError, "Missing the required parameter 'workflow_definition_id' when calling WorkflowManagementApi.get_workflow_definition_config_instances" if workflow_definition_id.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions/{workflowDefinitionId}/config_instances".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workflowDefinitionId' + '}', workflow_definition_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'GetConfigurationInstancesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#get_workflow_definition_config_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workflow Definitions metadata
    # Returns a list of workflow definitions' metadata.
    # @param account_id Account ID
    # @param DocuSign_Maestro::GetWorkflowDefinitionsOptions Options for modifying the behavior of the function.
    # @return [WorkflowDefinitionList]
    def get_workflow_definitions(account_id, options = DocuSign_Maestro::GetWorkflowDefinitionsOptions.default)
      data, _status_code, _headers = get_workflow_definitions_with_http_info(account_id, options)
      return data
    end

    # Get Workflow Definitions metadata
    # Returns a list of workflow definitions&#39; metadata.
    # @param account_id Account ID
    # @param DocuSign_Maestro::GetWorkflowDefinitionsOptions Options for modifying the behavior of the function.
    # @return [Array<(WorkflowDefinitionList, Fixnum, Hash)>] WorkflowDefinitionList data, response status code and response headers
    def get_workflow_definitions_with_http_info(account_id, options = DocuSign_Maestro::GetWorkflowDefinitionsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.get_workflow_definitions ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.get_workflow_definitions" if account_id.nil?
      if options.status && !['active', 'inactive', 'publishing', 'unpublishing', 'archived', 'archiving'].include?(options.status)
        fail ArgumentError, 'invalid value for "status", must be one of active, inactive, publishing, unpublishing, archived, archiving'
      end
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'status'] = options.status if !options.status.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'WorkflowDefinitionList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#get_workflow_definitions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Publishes or unpublishes a workflow definition.
    # Publishes or unpublishes a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param body Request Body to publish or unpublish a workflow definition. 
    # @return [DeployResponse]
    def publish_or_un_publish_workflow_definition(account_id, workflow_definition_id, body)
      data, _status_code, _headers = publish_or_un_publish_workflow_definition_with_http_info(account_id, workflow_definition_id,  body)
      return data
    end

    # Publishes or unpublishes a workflow definition.
    # Publishes or unpublishes a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param body Request Body to publish or unpublish a workflow definition. 
    # @return [Array<(DeployResponse, Fixnum, Hash)>] DeployResponse data, response status code and response headers
    def publish_or_un_publish_workflow_definition_with_http_info(account_id, workflow_definition_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.publish_or_un_publish_workflow_definition ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.publish_or_un_publish_workflow_definition" if account_id.nil?
      # verify the required parameter 'workflow_definition_id' is set
      fail ArgumentError, "Missing the required parameter 'workflow_definition_id' when calling WorkflowManagementApi.publish_or_un_publish_workflow_definition" if workflow_definition_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling WorkflowManagementApi.publish_or_un_publish_workflow_definition" if body.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions/{workflowDefinitionId}/publish".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workflowDefinitionId' + '}', workflow_definition_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeployResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#publish_or_un_publish_workflow_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a workflow definition.
    # Updates a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param body Request Body to update a workflow definition. 
    # @return [NewOrUpdatedWorkflowDefinitionResponse]
    def update_workflow_definition(account_id, workflow_definition_id, body)
      data, _status_code, _headers = update_workflow_definition_with_http_info(account_id, workflow_definition_id,  body)
      return data
    end

    # Updates a workflow definition.
    # Updates a workflow definition.
    # @param account_id Account ID
    # @param workflow_definition_id Workflow Definition ID
    # @param body Request Body to update a workflow definition. 
    # @return [Array<(NewOrUpdatedWorkflowDefinitionResponse, Fixnum, Hash)>] NewOrUpdatedWorkflowDefinitionResponse data, response status code and response headers
    def update_workflow_definition_with_http_info(account_id, workflow_definition_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowManagementApi.update_workflow_definition ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkflowManagementApi.update_workflow_definition" if account_id.nil?
      # verify the required parameter 'workflow_definition_id' is set
      fail ArgumentError, "Missing the required parameter 'workflow_definition_id' when calling WorkflowManagementApi.update_workflow_definition" if workflow_definition_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling WorkflowManagementApi.update_workflow_definition" if body.nil?
      # resource path
      local_var_path = "/v1/accounts/{accountId}/management/workflow_definitions/{workflowDefinitionId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workflowDefinitionId' + '}', workflow_definition_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NewOrUpdatedWorkflowDefinitionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowManagementApi#update_workflow_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end