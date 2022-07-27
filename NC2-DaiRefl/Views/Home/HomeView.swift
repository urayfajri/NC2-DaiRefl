//
//  HomeView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    
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
                        NavigationLink(destination: AllGoalView()) {
                            TaskSubView()
                        }
                        Spacer()
                        NavigationLink(destination: AllGoalView()) {
                            GoalSubView()
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("My Reflections")
                        .font(.title)
                    HStack {
                        Text("Today")
                        Spacer()
                        NavigationLink(destination: AllGoalView()) {
                            Text("View All")
                        }
                    }
                }
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

