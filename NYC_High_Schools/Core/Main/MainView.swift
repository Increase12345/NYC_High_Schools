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
        NavigationStack {
            
            // I could create ScrollView with a lazyVStack but for time saving porpuses I did List so it is automatically creates Lazy view
            List {
                ForEach(filteredSchools) { school in
                    NavigationLink {
                        DetailView(school: school)
                    } label: {
                        SchoolCellRowView(school: school)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .searchable(text: $vm.searchText, prompt: "Search for a school")
            .navigationTitle("NYC Schools")
        }
    }
    
    // Filtering schools for searching
    var filteredSchools: [HighSchool] {
        if vm.searchText.isEmpty {
            return vm.highSchools
        } else {
            return vm.highSchools.filter { $0.school_name.localizedCaseInsensitiveContains(vm.searchText) }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
