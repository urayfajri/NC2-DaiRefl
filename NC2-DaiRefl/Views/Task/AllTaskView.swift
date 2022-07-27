//
//  AllTaskView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct AllTaskView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(goalListVM.goals, id: \.goalID) { task in
                        TaskCellView(taskName: task.goalName, taskDescription: task.goalDescription, taskDate: task.goalDate)
                    }
                }
            }
            .navigationTitle("All Tasks")
            .padding(.horizontal, 16)
            .onAppear(perform: {
                goalListVM.getAllGoals()
            })
            Spacer()
        }
    }
}

struct AllTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AllTaskView()
    }
}

