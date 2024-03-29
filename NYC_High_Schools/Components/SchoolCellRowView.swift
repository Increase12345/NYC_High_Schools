//
//  SchoolCellRowView.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI
import Kingfisher

struct SchoolCellRowView: View {
    let school: HighSchool
    
    var body: some View {
        
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 80)
                    .foregroundColor(.purple)
                
                // I'm using here just a random image from internet for a demo perpouse but if API had image url we could use them! And another thing I'm using her Kingfisher insted of AsyncImage the reason is Kingfisher caches image automatically so we dont need to worry about that and we are not gonna do many cals to the server
                if let image = URL(string: APIConstants.schoolImageURL) {
                    KFImage(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .offset(x: 15)
                }
            }
                
            VStack(alignment: .leading) {
                Text(school.school_name)
                    .bold()
                
                Text(school.neighborhood)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .multilineTextAlignment(.leading)
            .padding(.leading)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct SchoolCellRowView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolCellRowView(school: .MOCK_DATA)
    }
}
