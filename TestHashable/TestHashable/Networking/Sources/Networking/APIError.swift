//
//  APIError.swift
//  Networking
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//
import Foundation
public enum APIError: LocalizedError {
    case noInternetConnection
    case invalidResponse
    case serverError(statusCode: Int, response: String)
    case decodingError
    
    var message: String {
        switch self {
        case .noInternetConnection:
            return "No internet connection. Please check your network settings."
        case .invalidResponse:
            return "Received an invalid response from the server."
        case .serverError(let statusCode, let response):
            return "Server error (status code: \(statusCode)). Response: \(response)"
        case .decodingError:
            return "Failed to decode the response from the server."
        }
    }
}
    
