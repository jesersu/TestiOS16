//
//  APIClient.swift
//  Networking
//
//  Created by Jesús Ervin Chapi Suyo on 14/09/25.
//

import Foundation

public protocol Endpoint {
    associatedtype Response: Decodable
    func request<Response: Decodable>(_ request: APIRequest<Response>) async throws -> Response
}
