//
//  UserStartView.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI


struct UserStartView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack(content: {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        })
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStartView(value: 1, title: "Alone")
}
