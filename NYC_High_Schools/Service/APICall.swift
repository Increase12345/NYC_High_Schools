//
//  APICall.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

//MARK: APICall Service
// I'm using here Singelton just for the demo porpuses but we can use Dependency Injection so then we can have more flexible and stable code, there are many pluses with Dependency Injection and basics of them are: 1. Our Service claas is not gonna be global (its good for safety), 2. We can customize INIT, 3. We can swap out service. And another thing I'm using here an actor insted of class, to prevent dataracing, its a pretty new type which Apple released couple years ago, it's very handy to compare how we would hadle this issue before with GCD lock's

actor APICall {
    static let shared = APICall()
    
    init() { }
    
    func fetchHighSchools() async throws -> [HighSchool] {
        guard let url = URL(string: APIConstants.schoolsAPI) else { throw APIError.invalidURL }
        
        do {
            guard let (data, _) = try? await URLSession.shared.data(from: url) else { throw APIError.inavlidData }
            let decoder = JSONDecoder()
            
            let decodedData = try decoder.decode([HighSchool].self, from: data)
            return decodedData
        } catch {
            print(error)
            throw APIError.inavlidData
        }
    }
}
