//
//  MarvelCharacterDTO.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//

struct MarvelCharacterDTO: Decodable {
    let id: Int
    let name: String
    let description: String?
    let modified: String?
    let thumbnail: ThumbnailDTO?

    func toDomain() -> Character {
        Character(
            id: id,
            name: name,
            description: description ?? "",
            thumbnailURL: thumbnail?.url
        )
    }
}
