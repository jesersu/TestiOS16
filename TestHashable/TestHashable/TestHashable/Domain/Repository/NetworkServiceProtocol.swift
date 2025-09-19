//
//  NetworkServiceProtocol.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//
import Combine
import Foundation

protocol NetworkServiceProtocol{
    func request<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error>
}
