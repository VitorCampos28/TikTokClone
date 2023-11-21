//
//  FeedView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    var body: some View {
        
        ScrollView {
            LazyVStack(spacing: 0, content: {
                ForEach(viewModel.posts) { post in
                    let _ = print("\(post)")
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear {
                            playInitialVideoIfNecessary()
                        }
                }
            })
            .scrollTargetLayout()
        }
        .onAppear {
            player.play() 
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNecessary() {
        guard scrollPosition == nil , let post = viewModel.posts.first, player.currentItem == nil else { return }
        
        let videoUrl: URL = URL(string: post.videoUrl) ?? URL(fileURLWithPath: "")
        let playerItem = AVPlayerItem(url: videoUrl)
        player.replaceCurrentItem(with: playerItem)
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: {$0.id == postId}) else { return }
        
        player.replaceCurrentItem(with: nil)
        let videoUrl: URL = URL(string: currentPost.videoUrl) ?? URL(fileURLWithPath: "")
        let playerItem = AVPlayerItem(url: videoUrl)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
