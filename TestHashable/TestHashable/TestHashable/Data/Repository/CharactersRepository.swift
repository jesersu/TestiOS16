//
//  CharactersRepository.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//
import Combine

struct CharactersRepository: CharactersRepositoryProtocol {
    
    private let publicKey : String
    private let hash : String
    private let ts : String
    private let baseURL: String
    
    private let networkService: NetworkServiceProtocol
    
    init (networkService: NetworkServiceProtocol = NetworkService(),
    publicKey: String,
    hash: String,
    ts: String,
    baseURL: String = "https://gateway.marvel.com/v1/public/characters")
    {
        
    }
        
    func fetchCharacters() async throws -> AnyPublisher<[Character], any Error> {
        
    }
    
}
    
