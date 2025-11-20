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

#Preview {
    ContentView()
}

// Single line comment
/* Multi
 Line
 Comment */
// Another single line comment
// Adding another comment - hopefully can code some more today
