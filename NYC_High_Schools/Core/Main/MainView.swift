//
//  MainView.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI

struct MainView: View {
    @StateObject private var vm = MainViewViewModel()
    @State var tr = ""
    
    var body: some View {
        
        //MARK: Main View
        NavigationStack {
            
            // I could create ScrollView with a lazyVStack but for time saving porpuses I did List so it is automatically creates Lazy view
            List {
                ForEach(vm.highSchools) { school in
                    NavigationLink {
                        DetailView(school: school)
                    } label: {
                        SchoolCellRowView(school: school)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("NYC Schools")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
