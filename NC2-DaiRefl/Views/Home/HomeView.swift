//
//  HomeView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var goalListVM = GoalListViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                VStack(spacing: 24) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Hi, Uray")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                            Text("Let’s make this day productive and beautiful")
                        }
                        Spacer()
                    }
                    
                    HStack {
                        NavigationLink(destination: AllTaskView()) {
                            TaskSubView()
                        }
                        Spacer()
                        NavigationLink(destination: AllGoalView()) {
                            GoalSubView(totalGoal: goalListVM.goals.count)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("My Reflections")
                        .font(.title)
                    VStack (spacing: 4) {
                        HStack {
                            Text("Today")
                            Spacer()
                            NavigationLink(destination: AllReflectionView()) {
                                Text("View All")
                            }
                        }
                        HStack {
                            Text(Date(), style: .date).font(.caption)
                            Spacer()
                        }
                    }
                    
                    ScrollView {
                        ForEach(goalListVM.goals, id: \.goalID) { reflection in
                            ReflectionCellView()
                        }
                    }
                }.onAppear(perform: {
                    goalListVM.getAllGoals()
                })
                Spacer()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 16)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

