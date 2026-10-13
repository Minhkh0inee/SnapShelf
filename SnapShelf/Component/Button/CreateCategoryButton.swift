//
//  CreateCategory.swift
//  SnapShelf
//
//  Created by Minh Khoi on 13/10/26.
//

import SwiftUI

struct CreateCategoryButton: View {
    var title: String = "Create new category"
        var action: () -> Void

        var body: some View {
            Button(action: action) {
                HStack(spacing: 8) {
                    Image(systemName: "plus")
                        .font(.headline.weight(.bold))

                    Text(title)
                        .font(.default.weight(.semibold))
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(Color.green) // Đen ở Light mode, Trắng ở Dark mode
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
            }
        }
}

#Preview {
    CreateCategoryButton(title: "Create New Category") {
        print("Create Click")
    }
}
