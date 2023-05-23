//
//  NewsListView.swift
//  AppleNews
//
//  Created by Russell Gordon on 2023-05-23.
//

import SwiftUI

struct NewsListView: View {
    
    // MARK: Stored properties
    // Fit as many items per row as possible,
    // with a minimum point size of 300
    // This makes the grid responsive to the device screen size
    let specifiedColumns = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]

    // MARK: Computed properties
    var body: some View {
        ScrollView {
            LazyVGrid(columns: specifiedColumns) {
                NewsItemView(image: "Farming",
                             source: "GlobeAndMail",
                             headline: "Maritime farmers holding breath as record-dry spring wrings region",
                             timeSincePosted: "1h ago")

                NewsItemView(image: "Carroll",
                             source: "Reuters",
                             headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                             timeSincePosted: "1h ago")

                NewsItemView(image: "Sheep",
                             source: "TheGuardian",
                             headline: "New Zealand's ratio of sheep to humans at lowest point in 170 years",
                             timeSincePosted: "1h ago")

            }
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .preferredColorScheme(.dark)
    }
}
