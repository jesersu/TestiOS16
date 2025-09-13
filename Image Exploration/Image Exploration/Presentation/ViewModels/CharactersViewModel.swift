//
//  CharactersViewModel.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//
import Combine
import Foundation

final class CharactersViewModel: ObservableObject{
    @Published var characters: [Character] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let fetchUseCase: FetchCharactersUseCaseProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(fetchUseCase: FetchCharactersUseCaseProtocol) {
        self.fetchUseCase = fetchUseCase
    }
    
    func loadCharacters(offset: Int = 0, limit: Int = 20) {
        isLoading = true
        errorMessage = nil
        
        fetchUseCase.execute(offset: offset, limit: limit)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                guard let self = self else { return }
                self.isLoading = false
                switch completion {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                case .finished:
                    break
                }
            } receiveValue: { [weak self] characters in
                self?.characters = characters
            }
            .store(in: &cancellables)
        
    }
    
    func cancelAll(){
        cancellables.forEach { $0.cancel()}
        cancellables.removeAll()
    }
}
