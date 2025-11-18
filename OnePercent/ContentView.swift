//  ContentView.swift
//  OnePercent
//  Created by JJ on 11.13.25

import SwiftUI

struct ContentView: View {
    @State private var selectedModule: String? = nil
    
    var body: some View {
        NavigationStack {
            if selectedModule == nil {
                DashboardView(selectedModule: $selectedModule)
            } else {
                ModuleView(moduleName: selectedModule!, onBack: {
                    selectedModule = nil
                })
            }
        }
    }
}

struct DashboardView: View {
    @Binding var selectedModule: String?
    
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

struct Module: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let color: Color
}

#Preview {
    ContentView()
}

// Single line comment
/* Multi
 Line
 Comment */
// Another single line comment
