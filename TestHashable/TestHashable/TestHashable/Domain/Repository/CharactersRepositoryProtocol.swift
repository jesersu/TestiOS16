//
//  CharactersRepositoryProtocol.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//
import Combine

protocol CharactersRepositoryProtocol{
    func fetchCharacters() async throws -> AnyPublisher<[Character], Error>
}
