//
//  ContentView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            TabView {
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                CalendarView().tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
