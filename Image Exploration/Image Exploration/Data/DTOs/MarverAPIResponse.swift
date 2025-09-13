//
//  MarverAPIResponse.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//

struct MarvelAPIResponse: Decodable {
    let code: Int
    let status: String
    let data: MarvelDataContainer
}
