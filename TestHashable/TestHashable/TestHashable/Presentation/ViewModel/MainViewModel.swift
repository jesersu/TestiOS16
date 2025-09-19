//
//  MainViewModel.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 15/09/25.
//

import Combine
import Networking

class MainViewModel: ObservableObject {
    @Published var login = false
    @Published var error : APIError?
    var service: APIServiceProtocol
    
    init
}
