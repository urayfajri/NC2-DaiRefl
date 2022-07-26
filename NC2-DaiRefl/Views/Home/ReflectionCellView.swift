//
//  ReflectionCellView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct ReflectionCellView: View {
    
    let goalName: String
    let goalDescription: String
    
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
                    .padding(.vertical, 8)
                    .lineLimit(2)
                
                HStack {
                    Spacer()
                }

            }
        }
        .background(Color.blue)
        .cornerRadius(12)
    }
}
