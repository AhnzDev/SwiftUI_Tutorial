//
//  PageView.swift
//  Landmarks
//
//  Created by Jihoon on 2/17/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage: Int = 1


    var body: some View {
        ZStack(alignment: .bottomTrailing) {
                    PageViewController(pages: pages, currentPage: $currentPage)
                    PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                        .frame(width: CGFloat(pages.count * 18))
                        .padding(.trailing)
                }
                .aspectRatio(3 / 2, contentMode: .fit)
    }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
