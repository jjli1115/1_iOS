//
//  QuickLogView.swift
//  OnePercent
//
//  Created by Guest on 11/19/25.
//

import SwiftUI

struct QuickLogView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Quicklog")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Quick logging feature coming soon")
                    .foregroundColor(.gray)
            }
            .navigationTitle("Quicklog")
        }
    }
}
