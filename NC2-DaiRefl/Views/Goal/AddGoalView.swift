//
//  AddGoalView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct AddGoalView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading ,spacing: 8) {
                Text("Goal Name")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                TextField("Enter Goal Name", text: $goalListVM.goalName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            VStack(alignment: .leading ,spacing: 8) {
                Text("Goal Description")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                TextField("Enter Goal Description", text: $goalListVM.goalDescription)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button("Save") {
                    goalListVM.saveGoal()
                    goalListVM.getAllGoals()
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
    }
}

struct AddGoalView_Previews: PreviewProvider {
    static var previews: some View {
        AddGoalView()
    }
}
