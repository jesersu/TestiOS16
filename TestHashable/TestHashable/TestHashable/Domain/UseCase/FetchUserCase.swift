//
//  FetchUserCase.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//

import Foundation
import Combine

protocol FetchUserCaseProtocol {
    func execute() -> AnyPublisher<[Character], Error>
}

struct FetchUserCase: FetchUserCaseProtocol{
    private let repository: CharactersRepositoryProtocol
    func execute() -> AnyPublisher<[Character], any Error> {
        
    }
}
