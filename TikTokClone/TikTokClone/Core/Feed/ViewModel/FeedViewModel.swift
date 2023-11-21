//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Vitor Campos on 16/11/23.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let VideosUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [.init(id: NSUUID().uuidString, videoUrl: VideosUrls[0]), .init(id: NSUUID().uuidString, videoUrl: VideosUrls[1]), .init(id: NSUUID().uuidString, videoUrl: VideosUrls[2]), .init(id: NSUUID().uuidString, videoUrl: VideosUrls[3])]
    }
}
