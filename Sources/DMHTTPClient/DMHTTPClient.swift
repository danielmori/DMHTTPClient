// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

protocol DMHTTPClientProtocol {
    func load<T: Decodable>(url: String) async throws -> T
}

public struct DMHTTPClient: DMHTTPClientProtocol {
    func load<T: Decodable>(url: String) async throws -> T {
        guard let url = URL(string: url)
        else {
            throw DMHTTPError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(T.self, from: data)
        return response
    }
}
