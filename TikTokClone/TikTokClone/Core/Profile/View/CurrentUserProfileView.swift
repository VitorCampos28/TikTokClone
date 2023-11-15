//
//  CurrentUserProfileView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(content: {
                    //Profile header
                    ProfileHeaderView()
                    // post grid view
                    PostGridView()
                })
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
