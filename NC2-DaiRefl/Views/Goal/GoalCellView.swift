//
//  GoalCellView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

//
//  ReflectionCellView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct GoalCellView: View {
    
    let goalName: String
    let goalDescription: String
    let goalDate: Date
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text(goalName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)
                
                Text(goalDescription)
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 2)
                    .lineLimit(2)
                
                HStack {
                    Spacer()
                    Text(goalDate, style: .date)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                }

            }
        }
        .background(Color.blue)
        .cornerRadius(12)
    }
}
