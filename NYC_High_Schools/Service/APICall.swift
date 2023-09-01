//
//  APICall.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

// I'm using here Singelton just for the demo porpuses but we can use Dependency Injection so then we can have more flexible and stable code, there are many pluses with Dependency Injection and basics of them are: 1. Our Service claas is not gonna be global (its good for safety), 2. We can customize INIT, 3. We can swap out service. And another thing I'm using here an actor insted of class, to prevent dataracing, its a pretty new type which Apple released couple years ago, it's very handy to compare how we would hadle this issue before with GCD lock's. Also we could use Generic function in here so it would be only one method for both models.

actor APICall {
    static let shared = APICall()
    
    init() { }
    
    // Fetching All list of schools
    func fetchHighSchools() async throws -> [HighSchool] {
        guard let url = URL(string: APIConstants.schoolsAPI) else { throw APIError.invalidURL }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            
            let decodedData = try decoder.decode([HighSchool].self, from: data)
            return decodedData
        } catch {
            throw APIError.inavlidData
        }
    }
    
    // Fetching SAT scores
    // At this time I'm gonna use decodingStrategy just to show that we can play arround with json
    func fetchSATScore() async throws -> [SATScore] {
        guard let url = URL(string: APIConstants.SATScoreAPI) else { throw APIError.invalidURL }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            let decodedData = try decoder.decode([SATScore].self, from: data)
            return decodedData
        } catch {
            throw APIError.inavlidData
        }
    }
}


/*
 Also we can use Combine to fetch data so it would look something like that:
 
 func fetchData() {
     guard let url = URL(string: "https://some json") else { return }
     
     URLSession.shared.dataTaskPublisher(for: url)
         .subscribe(on: DispatchQueue.global(qos: .background))
         .receive(on: DispatchQueue.main)
     // we can create function for tryMap so code will be cleaner
         .tryMap { (data, response) -> Data in
             guard
                 let response = response as? HTTPURLResponse,
                 response.statusCode >= 200 && response.statusCode < 300 else {
                 throw URLError(.badURL)
             }
             return data
         }
         .decode(type: [HighSchool].self, decoder: JSONDecoder())
     // Then we sink (put the data into our app)
         .sink { (completion) in
             // here some more logic
         } receiveValue: { [weak self] (decodedData) in
             self?.OurCollectionOfSchools = decodedData
         }
     
     // Then we store Cancellables but before we need to create cancellable
     var cancellables = Set<AnyCancellable>()
         .store(in: &cancellables)
 }
 */
