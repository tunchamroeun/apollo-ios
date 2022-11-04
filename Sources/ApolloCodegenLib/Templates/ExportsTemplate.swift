import Foundation

/// Renders the Cache Key Resolution extension for a generated schema.
struct ExportsTemplate: TemplateRenderer {
  let config: ApolloCodegen.ConfigurationContext

  let target: TemplateTarget = .schemaFile(type: .schemaConfiguration)

  var headerTemplate: TemplateString? {
    HeaderCommentTemplate.editableFileHeader(
      fileCanBeEditedTo: """
      provide @_exported ApolloAPI Apollo and ApolloWebSocket .
      """
    )
  }

  var template: TemplateString {
    """
    @_exported import ApolloAPI
    """
  }
}
