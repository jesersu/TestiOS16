//
//  APIRequest.swift
//  Networking
//
//  Created by Jesús Ervin Chapi Suyo on 14/09/25.
//
import Foundation

struct APIRequest<Response: Decodable> {
    var path: String
    var queryItems: [String : any Decodable]?
    var method: Method = .get
    var headers: [String : String]?
    var decoder: JSONDecoder = .init()
    
    
    public enum Method {
        case get
        case post
        case put
        
        public var stringValue: String {
            switch self {
            case .get: return "GET"
            case .post: return "POST"
            case .put: return "PUT"
            }
        }
    }
}

struct EmptyResponse: Decodable {}

typealias NoResponse = APIRequest<EmptyResponse>

extension APIRequest : CustomStringConvertible {
    var description: String {
            """
                Request(
                path: \(path),
                query: \(queryItems ?? [:]),
                method: \(method),
                headers: \(headers?.mapValues { $0.description.localizedCaseInsensitiveContains("Bearer") ? "***" : $0 } ?? [:])
            )
            """
    }
}

