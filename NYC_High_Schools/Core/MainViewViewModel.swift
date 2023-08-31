//
//  MainViewViewModel.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

class MainViewViewModel: ObservableObject {
    @Published private(set) var highSchools = [HighSchool]()
    
    let apiCall = APICall.shared
    
    init() {
        fetchHighSchools()
    }
    
    private func fetchHighSchools() {
        Task {
            self.highSchools = try await apiCall.fetchHighSchools()
        }
    }
}
