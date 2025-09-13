//
//  CharactersRepository.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//
import Combine
import Foundation

final class CharactersRepository: CharactersRepositoryProtocol {
    
    private let networkService: NetworkServiceProtocol
    private let publicKey: String
    private let hash: String
    private let ts: String
    private let baseURL: String
    
    init (networkService: NetworkServiceProtocol = NetworkService(),
          publicKey: String,
          hash: String,
          ts: String,
          baseURL: String = "https://gateway.marvel.com/v1/public/characters") {
        
        self.networkService = networkService
        self.publicKey = publicKey
        self.hash = hash
        self.ts = ts
        self.baseURL = baseURL
    }
    func fetchCharacters(offset: Int, limit: Int) -> AnyPublisher<[Character], any Error> {
        guard var comps = URLComponents(string: baseURL) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        comps.queryItems = [
            URLQueryItem(name: "ts", value: ts),
            URLQueryItem(name: "apikey", value: publicKey),
            URLQueryItem(name: "hash", value: hash),
//            URLQueryItem(name: "offset", value: String(offset)),
//            URLQueryItem(name: "limit", value: String(limit))
        ]
        
        guard let url = comps.url else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        return networkService.request(url)
            .map { ( response: MarvelAPIResponse) in
                response.data.results.map { $0.toDomain() }
            }.eraseToAnyPublisher()
            
    }
    
    
}
    
