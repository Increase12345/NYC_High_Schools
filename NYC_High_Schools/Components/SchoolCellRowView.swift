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
        
        //MARK: SchoolRow
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 60)
                    .foregroundColor(.purple)
                
                // I'm using here just a random image from internet for a demo perpouse but if API had image url we could use them!
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
                    .font(.title3.bold())
                Text(school.neighborhood)
                    .foregroundColor(.secondary)
            }
            .multilineTextAlignment(.leading)
            .padding(.leading)
            
            Spacer()
        }
    }
}

struct SchoolCellRowView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolCellRowView(school: .MOCK_DATA)
    }
}
