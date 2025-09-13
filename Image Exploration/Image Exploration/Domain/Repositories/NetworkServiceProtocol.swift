//
//  NetworkServiceProtocol.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//

import Foundation
import Combine

protocol NetworkServiceProtocol {
    func request<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error>
}
