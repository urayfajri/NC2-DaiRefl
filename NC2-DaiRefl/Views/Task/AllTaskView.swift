//
//  AllTaskView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct AllTaskView: View {
    
    @StateObject private var taskListVM = TaskListViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(taskListVM.tasks, id: \.taskID) { task in
                    TaskCellView(taskName: task.taskName, taskDescription: task.taskDescription, taskDate: task.taskDate)
                }
            }
        }
        .navigationTitle("All Tasks")
        .navigationBarTitleDisplayMode(.large)
        .padding(.horizontal, 16)
        .onAppear(perform: {
            taskListVM.getAllTasks()
        })
        .navigationBarItems(
            trailing:
                NavigationLink(
                    destination: AddTaskView(),
                    label: {
                        Image(systemName: "plus.app")
                    }
                )
        )
        Spacer()
    }
}

struct AllTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AllTaskView()
    }
}

