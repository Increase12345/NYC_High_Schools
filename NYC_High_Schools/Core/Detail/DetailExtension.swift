//
//  DetailExtension.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI

extension DetailView {
    var poster: some View {
        Image("students")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
    }
    
    var title: some View {
        VStack {
            Text(school.school_name)
                .multilineTextAlignment(.center)
                .font(.title.bold())
            Text(school.neighborhood)
                .foregroundColor(.secondary)
                .bold()
        }
    }
    
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
    
    var schoolOverview: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("About")
                .font(.title2.bold())
            Text(school.overview_paragraph)
        }
    }
    
    var schoolAddress: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("**Address:** \(school.fullAdress)")
            Text("**Tel:** \(school.phone_number)")
            Text("**Website:** \(school.website)")
        }
    }
    
    var satScores: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("SAT Scores")
                .font(.title2.bold())
            Text("Number of takers: **\("43")**")
            Text("Critical reading score: **\("223")**")
            Text("Math score: **\("467")**")
            Text("Writing score: **\("143")**")
        }
    }
}
