=begin
#Maestro API

#Maestro authors and executes experiences that allow non-coders the ability to define Simple Business Process without having to write code and to deploy them seamlessly without having to have development expertise

OpenAPI spec version: 1.0.0
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Maestro
  class DSWorkflowTransformationExpressionTypesToLowerExpression
    
    TO_LOWER_EXPRESSION = 'ToLowerExpression'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DSWorkflowTransformationExpressionTypesToLowerExpression.constants.select { |c| DSWorkflowTransformationExpressionTypesToLowerExpression::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DSWorkflowTransformationExpressionTypesToLowerExpression" if constantValues.empty?
      value
    end
  end
end
