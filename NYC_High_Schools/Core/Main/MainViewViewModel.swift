//
//  MainViewViewModel.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

// NOTE Please, task handler is not necassary here but I created them just to show that we can hande that in case user go to the view and came back before task ends so for memory leaks we can cancel them with onDisappear modifier 

@MainActor
class MainViewViewModel: ObservableObject {
    @Published private(set) var highSchools = [HighSchool]()
    var tasks: [Task<Void, Error>?] = []
    
    let apiCall = APICall.shared
    
    init() {
        fetchHighSchools()
    }
    
    private func fetchHighSchools() {
        let highSchoolTask = Task {
            self.highSchools = try await apiCall.fetchHighSchools()
        }
        tasks.append(highSchoolTask)
    }
    
    func cancelTasks() {
        tasks.forEach { task in
            task?.cancel()
        }
    }
}
