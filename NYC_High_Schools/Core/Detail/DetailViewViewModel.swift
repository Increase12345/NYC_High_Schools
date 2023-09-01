//
//  DetailViewViewModel.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

// NOTE Please, task handler is not necassary here coz we can use task modifier which cancels automaticaly but I created them just to show that we can hande that in case user go to the view and came back before task ends so for memory leaks we can cancel them with onDisappear modifier
@MainActor
class DetailViewViewModel: ObservableObject {
    @Published private(set) var allListOfSATScores = [SATScore]()
    @Published private(set) var satScoreOfSchool: SATScore?
    
    var tasks: [Task<Void, Error>?] = []
    
    let apiCall = APICall.shared
    
    // Fetching all the SAT scores
    func fetchAllSATScores() async {
        if let list = try? await apiCall.fetchSATScore() {
            self.allListOfSATScores = list
        }
    }
    
    // Getting specific school for our DetailView to display the score of selected school
    func defineSatScoreOfSchool(schoolName: String) {
        for score in allListOfSATScores {
            if score.schoolName == schoolName.uppercased() {
                self.satScoreOfSchool = score
            }
        }
    }
    
    func cancelTasks() {
        tasks.forEach { task in
            task?.cancel()
        }
    }
}
