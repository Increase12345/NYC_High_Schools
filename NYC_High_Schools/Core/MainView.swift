//
//  MainView.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import SwiftUI

struct MainView: View {
    @StateObject private var vm = MainViewViewModel()
    
    var body: some View {
        VStack {
            ForEach(vm.highSchools) { school in
                Text(school.school_name ?? "")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
