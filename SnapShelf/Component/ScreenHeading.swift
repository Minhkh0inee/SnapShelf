//
//  ScreenHeading.swift
//  MyApp
//
//  Created by Minh Khoi on 10/10/26.
//

import SwiftUI

struct ScreenHeading: View {
    let title: String
    let subTitle: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            Text(title)
                .font(.title.bold())
            
            Text(subTitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.vertical)
    }
}
