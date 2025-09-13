//
//  Logger.swift
//  SingletonExample
//
//  Created by Jesús Ervin Chapi Suyo on 17/06/25.
//

import Foundation

final class Logger {
    
    // MARK: - Shared Instance (Singleton)
    static let shared = Logger()
    
    // MARK: - Private Initializer
    private init() {
        print("Logger initialized")
    }
    
    // MARK: - Public Method
    func log(_ message: String) {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .medium)
        print("[\(timestamp)]: \(message)")
    }
}

