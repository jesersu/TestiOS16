//
//  ThumbnailDTO.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//
import Foundation

struct ThumbnailDTO: Decodable {
    let path: String
    let ext: String  // cannot name property `extension` -> usamos `ext`

    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }

    var url: URL? {
        // Marvel returns: path and extension separately
        URL(string: "\(path).\(ext)")
    }
}
