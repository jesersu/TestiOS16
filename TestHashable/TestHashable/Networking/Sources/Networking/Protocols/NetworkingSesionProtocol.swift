import Foundation
protocol NetworkingSesionProtocol {
    func getRequest(fot request: URLRequest) async throws -> (Data, URLResponse)
}

