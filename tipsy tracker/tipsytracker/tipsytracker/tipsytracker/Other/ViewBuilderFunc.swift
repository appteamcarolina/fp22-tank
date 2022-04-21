//
//  ViewBuilder.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import SwiftUI

struct ViewBuilderFunc<Header: View, Content: View>: View {
    let header: Header
    var background: Color?
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack {
                header
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Spacer()
            }

            HStack {
                content()

                Spacer()
            }
            .padding()
            .background(background ?? Color(.systemGray5))
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

