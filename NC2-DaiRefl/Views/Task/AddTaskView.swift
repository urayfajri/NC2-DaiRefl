//
//  AddTaskView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 28/07/22.
//

import SwiftUI

struct AddTaskView: View {
    @StateObject private var taskListVM = TaskListViewModel()
    @StateObject private var goalListVM = GoalListViewModel()
    @State private var dateTask: Date? = nil
    
    
    @State private var selectedGoal = ""
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading ,spacing: 8) {
                Text("Task Name")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                TextField("Enter Task Name", text: $taskListVM.taskName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
//            VStack(alignment: .leading ,spacing: 8) {
//                Text("Goal Name")
//                    .fontWeight(.semibold)
//                    .font(.subheadline)
//                Picker("Select goal", selection: $selectedGoal) {
//                    ForEach(goalListVM.goals, id: \.goalID) { goal in
//                        Text("\(goal.goalName)").tag(goal.goalName)
//                        }
//                    }
//            }
            
        
            
            VStack(alignment: .leading ,spacing: 8) {
                Text("Task Date")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                DatePickerTextField(placeholder: "Select Task Date", date: $dateTask).frame(height: 20)
            }
            
            VStack(alignment: .leading ,spacing: 8) {
                Text("Task Description")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                TextField("Enter Task Description", text: $taskListVM.taskDescription)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button("Save Task") {
                    taskListVM.taskDate = dateTask ?? Date()
                    taskListVM.saveTask()
                }
                .foregroundColor(.white)
                .padding()
                Spacer()
            }
            .background(Color.accentColor)
            .cornerRadius(8)
            .padding()
    
        }
        .padding()
        .navigationTitle("Add Task")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
