//
//  DetailExtension.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI

extension DetailView {
    
    //MARK: Poster
    var poster: some View {
        Image("students")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
    }
    
    //MARK: Title
    var title: some View {
        VStack {
            Text(school.school_name)
                .multilineTextAlignment(.center)
                .font(.title.bold())
            Text(school.neighborhood)
                .foregroundColor(.secondary)
                .bold()
        }
        .padding()
    }
    
    //MARK: SchoolTabDetails
    var schoolTabDetails: some View {
        HStack {
            VStack {
                Text("Total students")
                    .foregroundColor(.secondary)
                Text(school.total_students)
            }
            Spacer()
            VStack {
                Text("Final grades")
                    .foregroundColor(.secondary)
                Text(school.finalgrades)
            }
        }
    }
    
    //MARK: School overview
    var schoolOverview: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("About")
                .font(.title2.bold())
            Text(school.overview_paragraph)
        }
    }
    
    //MARK: SchoolAdress
    var schoolAddress: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("**Address:** \(school.fullAdress)")
            Text("**Tel:** \(school.phone_number)")
            Text("**Website:** \(school.website)")
        }
    }
    
    //MARK: SAT Scores
    var satScores: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("SAT Scores")
                .font(.title2.bold())
            
            if let scores = vm.satScoreOfSchool {
                Text("Number of takers: **\(scores.numOfSatTestTakers)**")
                Text("Critical reading score: **\(scores.satCriticalReadingAvgScore)**")
                Text("Math score: **\(scores.satMathAvgScore)**")
                Text("Writing score: **\(scores.satWritingAvgScore)**")
            } else {
                Text("Scores are not available!")
                    .foregroundColor(.secondary)
            }
        }
    }
}
