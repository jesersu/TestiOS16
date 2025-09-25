//
//  APIService.swift
//  MVVMProject
//
//  Created by Jesús Ervin Chapi Suyo on 24/09/25.
//
import Foundation

class APIService {
    private let baseURL = "https://dummy.restapiexample.com/api/v1/employees"
    private let session = URLSession.shared
    
    func fetchEmployees() async throws -> [Employee] {
        guard let url = URL(string: baseURL) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await session.data(from: url)
        let decodeResponse = try JSONDecoder().decode(Employees.self, from: data)
        return  decodeResponse.data
    }
}
