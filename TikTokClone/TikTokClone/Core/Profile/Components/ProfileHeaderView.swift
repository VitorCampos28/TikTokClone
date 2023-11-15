//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(content: {
            VStack(spacing: 8, content: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@lewis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            })
            
            HStack(spacing: 16, content: {
                UserStartView(value: 5, title: "Following")
                UserStartView(value: 7, title: "Folowers")
                UserStartView(value: 1, title: "Likes")
            })
            .padding(.top)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.blue)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Divider()
        })
    }
}

#Preview {
    ProfileHeaderView()
}
