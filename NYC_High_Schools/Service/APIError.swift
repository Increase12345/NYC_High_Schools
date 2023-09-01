//
//  APIError.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

enum APIError: Error, LocalizedError {
    case invalidURL, serverError, inavlidData, unknown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The URL was invalid, please try again later."
        case .serverError:
            return "There was an error with the server. Please try again later."
        case .inavlidData:
            return "The data is invalid. Please try again later."
        case .unknown(let error):
            return error.localizedDescription
        }
    }
}
