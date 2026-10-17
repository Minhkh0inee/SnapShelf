//
//  InfoSection.swift
//  SnapShelf
//
//  Created by Minh Khoi on 17/10/26.
//

import SwiftUI

struct InfoSection: View {
    var title: String? = "THÔNG TIN CHI TIẾT"

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // 1. Tiêu đề mục (nếu có)
            if let title = title {
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                    .padding(.leading, 4)
            }

            // 2. Thẻ Card bao quanh các dòng thông tin
            VStack(spacing: 0) {
                InfoRow(icon: "calendar", label: "Ngày tạo", value: "17/10/2026")

                Divider()
                    .padding(.leading, 36)

                InfoRow(icon: "mappin.and.ellipse", label: "Địa điểm", value: "124 Valencia St")

                Divider()
                    .padding(.leading, 36)

                InfoRow(icon: "tag", label: "Danh mục", value: "Receipts")

                Divider()
                    .padding(.leading, 36)

                InfoRow(icon: "dollarsign.circle", label: "Tổng tiền", value: "$42.50", valueColor: .green)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(.systemGray5), lineWidth: 1)
            )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

private struct InfoRow: View {
    let icon: String
    let label: String
    let value: String
    var valueColor: Color = .primary

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 16))
                .foregroundStyle(.secondary)
                .frame(width: 24)

            Text(label)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            Spacer()

            Text(value)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(valueColor)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    InfoSection()
        .padding()
}
