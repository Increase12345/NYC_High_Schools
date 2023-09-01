//
//  DetailView.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI

struct DetailView: View {
    @StateObject var vm = DetailViewViewModel()
    let school: HighSchool
    
    // I created here an Extension for this view just because even Apple use this technique on WWDC, but there are different ways to implement code in here
    var body: some View {
        ScrollView {
            
            poster
            
            title
            
            VStack(alignment: .leading, spacing: 15) {
                
                schoolTabDetails
              
                Divider()
                
                schoolOverview
                
                Divider()
                
                satScores
                
                Divider()
                
                schoolAddress
                
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await vm.fetchAllSATScores()
                vm.defineSatScoreOfSchool(schoolName: school.school_name)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(school: .MOCK_DATA)
    }
}
