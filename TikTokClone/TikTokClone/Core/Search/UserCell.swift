//
//  UserCell.swift
//  TikTokClone
//
//  Created by Vitor Campos on 15/11/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(content: {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(content: {
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Test Name")
                    .font(.footnote)
            })
            
            Spacer()
        })
    }
}

#Preview {
    UserCell()
}
