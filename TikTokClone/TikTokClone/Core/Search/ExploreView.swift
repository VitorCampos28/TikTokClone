//
//  ExploreView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16, content: {
                    ForEach(1...10, id: \.self) { count in
                        UserCell()
                            .padding(.horizontal)
                    }
                })
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ExploreView()
}
