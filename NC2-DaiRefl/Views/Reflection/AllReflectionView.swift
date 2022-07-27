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
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(goalListVM.goals, id: \.goalID) { reflection in
                        ReflectionCell(reflectionName: reflection.goalName, reflectionDescription: reflection.goalDescription, reflectionDate: reflection.goalDate)
                    }
                }
            }
            .navigationTitle("All Reflections")
            .padding(.horizontal, 16)
            .onAppear(perform: {
                goalListVM.getAllGoals()
            })
            Spacer()
        }
    }
}

struct AllReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        AllReflectionView()
    }
}
