//
//  ContentView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter Goal Name", text: $goalListVM.name).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Enter Goal Description", text: $goalListVM.description).textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Save") {
                goalListVM.add()
            }
            
            List (1...20, id: \.self) { index in
                Text("\(index)")
                Text("\(index)")
            }
            
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
