//
//  ModuleCard.swift
//  OnePercent
//
//  Created by Guest on 11/19/25.
//

import SwiftUI

struct ModuleCard: View {
    let module: Module
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 12) {
                Image(systemName:module.icon)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .frame(width: 48, height: 48)
                    .background(module.color)
                    .cornerRadius(12)
                
                Text(module.name)
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.05), radius: 4, y: 2)
        }
    }
}

struct ModuleView: View {
    let moduleName: String
    let onBack: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: onBack) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Back to Dashboard")
                }
                .foregroundColor(.blue)
                .padding()
            }
            
            VStack(alignment: .leading) {
                Text(moduleName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Text("This is the \(moduleName) module.")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}
