//
//  AppBootstrap.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//

import Foundation

struct AppBootstrap {
    static func makeCharactersListView() -> CharactersListView {
        let network = NetworkService()
        let repo = CharactersRepository(networkService: network,
                                        publicKey: "3e756db714ab88f1b0ec629a4f0082ee",
                                        hash: "0ea9043d9b48634b4065bf7134182cbd",
                                        ts: "1757512001.356988")
        let useCase = FetchCharactersUseCase(repository: repo)
        let vm = CharactersViewModel(fetchUseCase: useCase)
        return CharactersListView(viewModel: vm)
    }
}
