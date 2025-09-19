//
//  NetworkService.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//

import Foundation
import Combine
final class NetworkService: NetworkServiceProtocol {
    
    private let session: URLSession
    private let decoder: JSONDecoder
    
    init(session: URLSession = .shared, decoder: JSONDecoder = JSONDecoder()) {
        self.session = session
        self.decoder = decoder
    }
    
    func request<T>(_ url: URL) -> AnyPublisher<T, any Error> where T : Decodable {
        session.dataTaskPublisher(for: url)
            .tryMap{ output in
                guard let http = output.response as? HTTPURLResponse,
                      (200..<300).contains(http.statusCode) else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }.decode(type: T.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
}
