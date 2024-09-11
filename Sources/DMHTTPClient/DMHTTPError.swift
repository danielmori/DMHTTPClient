//
//  File.swift
//  
//
//  Created by Daniel Mori on 11/09/24.
//

import Foundation

public enum DMHTTPError: Error {
    case invalidURL
    case unableToDecodeJSON
    case invalidStatusCode
}
