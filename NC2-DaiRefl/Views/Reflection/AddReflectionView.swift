//
//  AddReflectionView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//

import SwiftUI

struct AddReflectionView: View {
    @StateObject private var taskListVM = TaskListViewModel()
    @StateObject private var reflectionListVM = ReflectionListViewModel()
    @State private var dateReflection: Date? = nil
    
    
    @State private var selectedTask = ""
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading ,spacing: 8) {
                Text("Reflection Name")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                TextField("Enter Relfection Name", text: $reflectionListVM.reflectionName)
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
                Text("Reflection Date")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                DatePickerTextField(placeholder: "Select Task Date", date: $dateReflection).frame(height: 20)
            }
            
            VStack(alignment: .leading ,spacing: 8) {
                Text("Reflection Description")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                TextField("Enter Reflection Description", text: $reflectionListVM.reflectionDescription)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button("Save Reflection") {
                    reflectionListVM.reflectionDate = dateReflection ?? Date()
                    reflectionListVM.saveReflection()
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
        .navigationTitle("Add Reflection")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        AddReflectionView()
    }
}
