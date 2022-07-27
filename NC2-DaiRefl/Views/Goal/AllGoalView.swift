//
//  AllGoalView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 26/07/22.
//

import SwiftUI

struct AllGoalView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(goalListVM.goals, id: \.goalID) { goal in
                        GoalCellView(goalName: goal.goalName, goalDescription: goal.goalDescription, goalDate: goal.goalDate)
                    }
                }
            }
            .navigationTitle("All Goal")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationViewStyle(.stack)
            .padding(.horizontal, 16)
            .onAppear(perform: {
                goalListVM.getAllGoals()
            })
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: AddGoalView(),
                        label: {
                            Image(systemName: "plus.app")
                        }
                    )
            )
            Spacer()
        }
    }
}

struct AllGoalView_Previews: PreviewProvider {
    static var previews: some View {
        AllGoalView()
    }
}
