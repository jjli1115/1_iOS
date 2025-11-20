//
//  Dashboard.swift
//  OnePercent
//
//  Created by Guest on 11/19/25.
//

import SwiftUI

struct DashboardView: View {
    let modules = [
        Module(name: "Memory", icon: "brain", color: .purple),
        Module(name: "Sleep", icon: "moon.fill", color: .indigo),
        Module(name: "Finance", icon: "dollarsign.circle.fill", color: .green),
        Module(name: "Fitness", icon: "figure.run", color: .red),
        Module(name: "QuickLog", icon: "pencil", color: .blue),
        Module(name: "Stats", icon: "chart.bar.fill", color: .orange),
        Module(name: "Tribe", icon: "person.3.fill", color: .black),
        Module(name: "Ques", icon: "questionmark.circle.fill", color: .teal),
        Module(name: "Profile", icon: "person.fill", color: .gray)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading) {
                Text("1%")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Be 1% better every day.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(modules) { module in
                        ModuleCard(module: module){
                            selectedModule = module.name
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    DashboardView()
}
