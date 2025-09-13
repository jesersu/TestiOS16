//
//  FetchCharactersUseCase.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//
import Combine
protocol FetchCharactersUseCaseProtocol {
    func execute(offset: Int, limit: Int) -> AnyPublisher<[Character], Error>
}

final class FetchCharactersUseCase: FetchCharactersUseCaseProtocol {
    private let repository: CharactersRepositoryProtocol
    
    init(repository: CharactersRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(offset: Int, limit: Int) -> AnyPublisher<[Character], any Error> {
        repository.fetchCharacters(offset: offset, limit: limit)
    }
}
