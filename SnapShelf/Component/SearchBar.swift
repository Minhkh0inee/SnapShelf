//
//  SearchBar.swift
//  MyApp
//
//  Created by Minh Khoi on 10/10/26.
//

import SwiftUI
struct SearchBar: View {
    @Binding var text: String
    var placeholder: String = "Tìm kiếm..."
    var isFake: Bool = false

    var body: some View {
        if isFake {
            NavigationLink {
                SearchView()
            } label: {
                searchBarUI
            }
            .buttonStyle(.plain)
        } else {
            searchBarUI
        }
    }

    private var searchBarUI: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)

            if isFake {
                Text(placeholder)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
            } else {
                TextField(placeholder, text: $text)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
