//
//  APICall.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

actor APICall {
    static let shared = APICall()
    
    init() { }
    
    func fetchHighSchools() async throws -> [HighSchool] {
        guard let url = URL(string: APIConstants.schoolsAPI) else { throw APIError.invalidURL }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            
            let decodedData = try decoder.decode([HighSchool].self, from: data)
            return decodedData
        } catch {
            print(error)
            throw APIError.inavlidData
        }
    }
}
