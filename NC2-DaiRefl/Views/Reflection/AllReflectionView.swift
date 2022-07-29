//
//  AllReflectionView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct AllReflectionView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(goalListVM.goals, id: \.goalID) { goal in
                    GoalCellView(goalName: goal.goalName, goalDescription: goal.goalDescription, goalDate: goal.goalDate)
                }
            }
        }
        .navigationTitle("All Goal")
        .navigationBarTitleDisplayMode(.large)
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

struct AllReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        AllReflectionView()
    }
}
