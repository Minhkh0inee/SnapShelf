//
//  Image.swift
//  SnapShelf
//
//  Created by Minh Khoi on 11/10/26.
//

import Foundation

struct Article: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageURL: String
}
