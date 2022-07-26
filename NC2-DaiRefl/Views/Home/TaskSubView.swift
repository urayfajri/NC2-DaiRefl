//
//  TaskSubView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct TaskSubView: View {
    
    let totalTask: Int
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text("Tasks")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading, 8)
                    .padding(.leading)
                
                HStack {
                    Text(String(totalTask))
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 90, height: 24)
                    
                    Image("task")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6, x: 0.0, y: 0.0)
    }
}
