//
//  FeedView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0, content: {
                ForEach(1...10, id: \.self) { post in
                    Rectangle()
                        .fill(.blue)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
                }
            })
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
