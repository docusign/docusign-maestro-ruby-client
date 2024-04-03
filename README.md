# docusign_maestro

DocuSign_Maestro - the Ruby gem for the Maestro API

Maestro authors and executes experiences that allow non-coders the ability to define Simple Business Process without having to write code and to deploy them seamlessly without having to have development expertise

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0.rc1
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://developers.docusign.com/](https://developers.docusign.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build docusign_maestro.gemspec
```

Then either install the gem locally:

```shell
gem install ./docusign_maestro-1.0.0.rc1.gem
```
(for development, run `gem install --dev ./docusign_maestro-1.0.0.rc1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'docusign_maestro', '~> 1.0.0.rc1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'docusign_maestro', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'docusign_maestro'

# Setup authorization
DocuSign_Maestro.configure do |config|
  # Configure OAuth2 access token for authorization: docusignAccessCode
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DocuSign_Maestro::WorkflowInstanceManagementApi.new

account_id = 'account_id_example' # String | Account ID

instance_id = 'instance_id_example' # String | DS Workflow Instance Id (dacId)


begin
  #Cancels a running workflow instance.
  result = api_instance.cancel_workflow_instance(account_id, instance_id)
  p result
rescue DocuSign_Maestro::ApiError => e
  puts "Exception when calling WorkflowInstanceManagementApi->cancel_workflow_instance: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://www.docusign.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DocuSign_Maestro::WorkflowInstanceManagementApi* | [**cancel_workflow_instance**](docs/WorkflowInstanceManagementApi.md#cancel_workflow_instance) | **POST** aow-manage/v1.0/management/accounts/{accountId}/instances/{instanceId}/cancel | Cancels a running workflow instance.
*DocuSign_Maestro::WorkflowInstanceManagementApi* | [**get_workflow_history**](docs/WorkflowInstanceManagementApi.md#get_workflow_history) | **GET** aow-manage/v1.0/management/accounts/{accountId}/instances/{instanceId}/history | Get List of Step Histories
*DocuSign_Maestro::WorkflowInstanceManagementApi* | [**get_workflow_instance**](docs/WorkflowInstanceManagementApi.md#get_workflow_instance) | **GET** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId}/instances/{instanceId} | Get Workflow Instance Details
*DocuSign_Maestro::WorkflowInstanceManagementApi* | [**get_workflow_instances**](docs/WorkflowInstanceManagementApi.md#get_workflow_instances) | **GET** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId}/instances | Get List of Workflow Instances
*DocuSign_Maestro::WorkflowManagementApi* | [**create_workflow_definition**](docs/WorkflowManagementApi.md#create_workflow_definition) | **POST** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions | Creates a new workflow definition.
*DocuSign_Maestro::WorkflowManagementApi* | [**delete_workflow_definition**](docs/WorkflowManagementApi.md#delete_workflow_definition) | **DELETE** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId} | Deletes a workflow definition.
*DocuSign_Maestro::WorkflowManagementApi* | [**get_workflow_definition**](docs/WorkflowManagementApi.md#get_workflow_definition) | **GET** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId} | Get Workflow Definition
*DocuSign_Maestro::WorkflowManagementApi* | [**get_workflow_definition_config_instances**](docs/WorkflowManagementApi.md#get_workflow_definition_config_instances) | **GET** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId}/configInstances | Gets configuration instances
*DocuSign_Maestro::WorkflowManagementApi* | [**get_workflow_definitions**](docs/WorkflowManagementApi.md#get_workflow_definitions) | **GET** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions | Get Workflow Definitions metadata
*DocuSign_Maestro::WorkflowManagementApi* | [**publish_or_un_publish_workflow_definition**](docs/WorkflowManagementApi.md#publish_or_un_publish_workflow_definition) | **POST** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId}/publish | Publishes or unpublishes a workflow definition.
*DocuSign_Maestro::WorkflowManagementApi* | [**update_workflow_definition**](docs/WorkflowManagementApi.md#update_workflow_definition) | **PUT** aow-manage/v1.0/management/accounts/{accountId}/workflowDefinitions/{workflowDefinitionId} | Updates a workflow definition.
*DocuSign_Maestro::WorkflowTriggerApi* | [**trigger_workflow**](docs/WorkflowTriggerApi.md#trigger_workflow) | **POST** aow-auth/v1.0/accounts/{accountId}/workflows/trigger | Creates a new workflow instance after authenticating with DS Account Server


## Documentation for Models

 - [DocuSign_Maestro::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [DocuSign_Maestro::AccessTokenTokenTypes](docs/AccessTokenTokenTypes.md)
 - [DocuSign_Maestro::CancelResponse](docs/CancelResponse.md)
 - [DocuSign_Maestro::CreateOrUpdateWorkflowDefinitionRequestBody](docs/CreateOrUpdateWorkflowDefinitionRequestBody.md)
 - [DocuSign_Maestro::DSDoUntilStep](docs/DSDoUntilStep.md)
 - [DocuSign_Maestro::DSDocGenStep](docs/DSDocGenStep.md)
 - [DocuSign_Maestro::DSDocGenStepInput](docs/DSDocGenStepInput.md)
 - [DocuSign_Maestro::DSIdvStep](docs/DSIdvStep.md)
 - [DocuSign_Maestro::DSIdvStepInput](docs/DSIdvStepInput.md)
 - [DocuSign_Maestro::DSIfElseStep](docs/DSIfElseStep.md)
 - [DocuSign_Maestro::DSLoopStep](docs/DSLoopStep.md)
 - [DocuSign_Maestro::DSParallelStep](docs/DSParallelStep.md)
 - [DocuSign_Maestro::DSServiceStep](docs/DSServiceStep.md)
 - [DocuSign_Maestro::DSSignStep](docs/DSSignStep.md)
 - [DocuSign_Maestro::DSSignStepInput](docs/DSSignStepInput.md)
 - [DocuSign_Maestro::DSTransformationStep](docs/DSTransformationStep.md)
 - [DocuSign_Maestro::DSWebFormsStep](docs/DSWebFormsStep.md)
 - [DocuSign_Maestro::DSWebFormsStepConfig](docs/DSWebFormsStepConfig.md)
 - [DocuSign_Maestro::DSWorkflowBooleanExpression](docs/DSWorkflowBooleanExpression.md)
 - [DocuSign_Maestro::DSWorkflowComparisonExpression](docs/DSWorkflowComparisonExpression.md)
 - [DocuSign_Maestro::DSWorkflowComparisonOperatorTypes](docs/DSWorkflowComparisonOperatorTypes.md)
 - [DocuSign_Maestro::DSWorkflowConcatExpression](docs/DSWorkflowConcatExpression.md)
 - [DocuSign_Maestro::DSWorkflowDocGenDocOutputFormat](docs/DSWorkflowDocGenDocOutputFormat.md)
 - [DocuSign_Maestro::DSWorkflowExpressionTypesBooleanExpression](docs/DSWorkflowExpressionTypesBooleanExpression.md)
 - [DocuSign_Maestro::DSWorkflowExpressionTypesComparisonExpression](docs/DSWorkflowExpressionTypesComparisonExpression.md)
 - [DocuSign_Maestro::DSWorkflowExpressionTypesParallelExpression](docs/DSWorkflowExpressionTypesParallelExpression.md)
 - [DocuSign_Maestro::DSWorkflowIndexOfExpression](docs/DSWorkflowIndexOfExpression.md)
 - [DocuSign_Maestro::DSWorkflowLane](docs/DSWorkflowLane.md)
 - [DocuSign_Maestro::DSWorkflowLanesRecord](docs/DSWorkflowLanesRecord.md)
 - [DocuSign_Maestro::DSWorkflowLastIndexOfExpression](docs/DSWorkflowLastIndexOfExpression.md)
 - [DocuSign_Maestro::DSWorkflowLogicalOperatorTypes](docs/DSWorkflowLogicalOperatorTypes.md)
 - [DocuSign_Maestro::DSWorkflowParallelExpression](docs/DSWorkflowParallelExpression.md)
 - [DocuSign_Maestro::DSWorkflowParticipantRecord](docs/DSWorkflowParticipantRecord.md)
 - [DocuSign_Maestro::DSWorkflowReplaceExpression](docs/DSWorkflowReplaceExpression.md)
 - [DocuSign_Maestro::DSWorkflowStep](docs/DSWorkflowStep.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSDocGen](docs/DSWorkflowStepTypesDSDocGen.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSIdv](docs/DSWorkflowStepTypesDSIdv.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSIfElse](docs/DSWorkflowStepTypesDSIfElse.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSSign](docs/DSWorkflowStepTypesDSSign.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSTransformation](docs/DSWorkflowStepTypesDSTransformation.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDSWebForms](docs/DSWorkflowStepTypesDSWebForms.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesDoUntil](docs/DSWorkflowStepTypesDoUntil.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesLoop](docs/DSWorkflowStepTypesLoop.md)
 - [DocuSign_Maestro::DSWorkflowStepTypesParallel](docs/DSWorkflowStepTypesParallel.md)
 - [DocuSign_Maestro::DSWorkflowSubstringExpression](docs/DSWorkflowSubstringExpression.md)
 - [DocuSign_Maestro::DSWorkflowToLowerExpression](docs/DSWorkflowToLowerExpression.md)
 - [DocuSign_Maestro::DSWorkflowToUpperExpression](docs/DSWorkflowToUpperExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpression](docs/DSWorkflowTransformationExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesConcatExpression](docs/DSWorkflowTransformationExpressionTypesConcatExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesIndexOfExpression](docs/DSWorkflowTransformationExpressionTypesIndexOfExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesLastIndexOfExpression](docs/DSWorkflowTransformationExpressionTypesLastIndexOfExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesReplaceExpression](docs/DSWorkflowTransformationExpressionTypesReplaceExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesSubstringExpression](docs/DSWorkflowTransformationExpressionTypesSubstringExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesToLowerExpression](docs/DSWorkflowTransformationExpressionTypesToLowerExpression.md)
 - [DocuSign_Maestro::DSWorkflowTransformationExpressionTypesToUpperExpression](docs/DSWorkflowTransformationExpressionTypesToUpperExpression.md)
 - [DocuSign_Maestro::DSWorkflowTrigger](docs/DSWorkflowTrigger.md)
 - [DocuSign_Maestro::DSWorkflowTriggerTypes](docs/DSWorkflowTriggerTypes.md)
 - [DocuSign_Maestro::DSWorkflowVariable](docs/DSWorkflowVariable.md)
 - [DocuSign_Maestro::DSWorkflowVariableFromParticipant](docs/DSWorkflowVariableFromParticipant.md)
 - [DocuSign_Maestro::DSWorkflowVariableFromStep](docs/DSWorkflowVariableFromStep.md)
 - [DocuSign_Maestro::DSWorkflowVariableFromVariable](docs/DSWorkflowVariableFromVariable.md)
 - [DocuSign_Maestro::DSWorkflowVariableRecord](docs/DSWorkflowVariableRecord.md)
 - [DocuSign_Maestro::DSWorkflowVariableSourceTypesParticipant](docs/DSWorkflowVariableSourceTypesParticipant.md)
 - [DocuSign_Maestro::DSWorkflowVariableSourceTypesStep](docs/DSWorkflowVariableSourceTypesStep.md)
 - [DocuSign_Maestro::DSWorkflowVariableSourceTypesVariable](docs/DSWorkflowVariableSourceTypesVariable.md)
 - [DocuSign_Maestro::DeployRequest](docs/DeployRequest.md)
 - [DocuSign_Maestro::DeployResponse](docs/DeployResponse.md)
 - [DocuSign_Maestro::DeployStatus](docs/DeployStatus.md)
 - [DocuSign_Maestro::DeploymentStatus](docs/DeploymentStatus.md)
 - [DocuSign_Maestro::ESignDocumentFromESignTemplate](docs/ESignDocumentFromESignTemplate.md)
 - [DocuSign_Maestro::ESignDocumentFromPreviousStep](docs/ESignDocumentFromPreviousStep.md)
 - [DocuSign_Maestro::ESignDocumentTypesFromDSTemplate](docs/ESignDocumentTypesFromDSTemplate.md)
 - [DocuSign_Maestro::ESignDocumentTypesFromPreviousStep](docs/ESignDocumentTypesFromPreviousStep.md)
 - [DocuSign_Maestro::ESignDocuments](docs/ESignDocuments.md)
 - [DocuSign_Maestro::ESignLocalePolicy](docs/ESignLocalePolicy.md)
 - [DocuSign_Maestro::ESignSigner](docs/ESignSigner.md)
 - [DocuSign_Maestro::ESignTabs](docs/ESignTabs.md)
 - [DocuSign_Maestro::ESignTabsRecord](docs/ESignTabsRecord.md)
 - [DocuSign_Maestro::ErrorCodes](docs/ErrorCodes.md)
 - [DocuSign_Maestro::ErrorResponse](docs/ErrorResponse.md)
 - [DocuSign_Maestro::EventTypes](docs/EventTypes.md)
 - [DocuSign_Maestro::GetConfigurationInstanceResponse](docs/GetConfigurationInstanceResponse.md)
 - [DocuSign_Maestro::GetConfigurationInstancesResponse](docs/GetConfigurationInstancesResponse.md)
 - [DocuSign_Maestro::GetConfigurationInstancesResponseConfigInstances](docs/GetConfigurationInstancesResponseConfigInstances.md)
 - [DocuSign_Maestro::HttpTypes](docs/HttpTypes.md)
 - [DocuSign_Maestro::InvalidWorkflowResponse](docs/InvalidWorkflowResponse.md)
 - [DocuSign_Maestro::NewOrUpdatedWorkflowDefinitionResponse](docs/NewOrUpdatedWorkflowDefinitionResponse.md)
 - [DocuSign_Maestro::NumberOrVariable](docs/NumberOrVariable.md)
 - [DocuSign_Maestro::Participant](docs/Participant.md)
 - [DocuSign_Maestro::ParticipantKeys](docs/ParticipantKeys.md)
 - [DocuSign_Maestro::ProgressInstance](docs/ProgressInstance.md)
 - [DocuSign_Maestro::RecordStringBoolean](docs/RecordStringBoolean.md)
 - [DocuSign_Maestro::RecordStringOrVariableOrTransformation](docs/RecordStringOrVariableOrTransformation.md)
 - [DocuSign_Maestro::RecordToNever](docs/RecordToNever.md)
 - [DocuSign_Maestro::ReplicationStatus](docs/ReplicationStatus.md)
 - [DocuSign_Maestro::StartedByInstance](docs/StartedByInstance.md)
 - [DocuSign_Maestro::StringOrVariableOrTransformation](docs/StringOrVariableOrTransformation.md)
 - [DocuSign_Maestro::SuccessMessageResponse](docs/SuccessMessageResponse.md)
 - [DocuSign_Maestro::TriggerPayload](docs/TriggerPayload.md)
 - [DocuSign_Maestro::TriggerWorkflowViaPostResponse](docs/TriggerWorkflowViaPostResponse.md)
 - [DocuSign_Maestro::ValidationErrors](docs/ValidationErrors.md)
 - [DocuSign_Maestro::WorkflowDefinition](docs/WorkflowDefinition.md)
 - [DocuSign_Maestro::WorkflowDefinitionList](docs/WorkflowDefinitionList.md)
 - [DocuSign_Maestro::WorkflowDefinitionMetadata](docs/WorkflowDefinitionMetadata.md)
 - [DocuSign_Maestro::WorkflowDefinitionWithId](docs/WorkflowDefinitionWithId.md)
 - [DocuSign_Maestro::WorkflowDeleteResponse](docs/WorkflowDeleteResponse.md)
 - [DocuSign_Maestro::WorkflowInstance](docs/WorkflowInstance.md)
 - [DocuSign_Maestro::WorkflowInstanceMap](docs/WorkflowInstanceMap.md)
 - [DocuSign_Maestro::WorkflowInstanceState](docs/WorkflowInstanceState.md)
 - [DocuSign_Maestro::WorkflowInstancesList](docs/WorkflowInstancesList.md)
 - [DocuSign_Maestro::WorkflowMetadataStatus](docs/WorkflowMetadataStatus.md)
 - [DocuSign_Maestro::WorkflowStepError](docs/WorkflowStepError.md)
 - [DocuSign_Maestro::WorkflowStepErrorError](docs/WorkflowStepErrorError.md)
 - [DocuSign_Maestro::WorkflowStepHistory](docs/WorkflowStepHistory.md)
 - [DocuSign_Maestro::WorkflowStepHistoryList](docs/WorkflowStepHistoryList.md)
 - [DocuSign_Maestro::WorkflowStepHistoryState](docs/WorkflowStepHistoryState.md)


## Documentation for Authorization


### docusignAccessCode

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://account.docusign.com/oauth/auth
- **Scopes**: N/A

