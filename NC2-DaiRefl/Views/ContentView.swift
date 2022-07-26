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
            TextField("Enter Goal Name", text: $goalListVM.goalName).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Enter Goal Description", text: $goalListVM.goalDescription).textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Save") {
                goalListVM.saveGoal()
                goalListVM.getAllGoals()
            }
            
            List (goalListVM.goals, id: \.goalID) { goal in
                Text(goal.goalName)
                Text(goal.goalDescription)
            }
            
            Spacer()
        }
        .padding()
        .onAppear(perform: {
            goalListVM.getAllGoals()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
