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


    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
