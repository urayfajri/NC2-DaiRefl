//
//  ReflectionCell.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 27/07/22.
//

import SwiftUI

struct ReflectionCell: View {
    
    let reflectionName: String
    let reflectionDescription: String
    let reflectionDate: Date
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text(reflectionName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)
                
                Text(reflectionDescription)
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 2)
                    .lineLimit(2)
                
                HStack {
                    Spacer()
                    Text("Reflection Date")
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
