// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct CharacterNameAndAppearsIn: StarWarsAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment CharacterNameAndAppearsIn on Character {
      __typename
      name
      appearsIn
    }
    """ }

  public let __data: DataDict
  public init(data: DataDict) { __data = data }

  public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("name", String.self),
    .field("appearsIn", [GraphQLEnum<StarWarsAPI.Episode>?].self),
  ] }

  /// The name of the character
  public var name: String { __data["name"] }
  /// The movies this character appears in
  public var appearsIn: [GraphQLEnum<StarWarsAPI.Episode>?] { __data["appearsIn"] }
}
