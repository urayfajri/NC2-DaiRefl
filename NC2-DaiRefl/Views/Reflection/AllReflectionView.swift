//
//  AllReflectionView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct AllReflectionView: View {

    @StateObject private var reflectionListVM = ReflectionListViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(reflectionListVM.reflections, id: \.reflectionID) { reflection in
                    ReflectionCell(reflectionName: reflection.reflectionName, reflectionDescription: reflection.reflectionDescription, reflectionDate: reflection.reflectionDate)
                }
            }
        }
        .navigationTitle("All Reflection")
        .navigationBarTitleDisplayMode(.large)
        .navigationViewStyle(.stack)
        .padding(.horizontal, 16)
        .onAppear(perform: {
            reflectionListVM.getReflections()
        })
        .navigationBarItems(
            trailing:
                NavigationLink(
                    destination: AddReflectionView(),
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
