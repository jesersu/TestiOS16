//
//  CharactersRepository.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//
import Combine
protocol CharactersRepositoryProtocol {
    func fetchCharacters(offset: Int, limit: Int ) -> AnyPublisher<[Character], Error>
}
