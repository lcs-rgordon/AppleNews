//
//  NewsListView.swift
//  AppleNews
//
//  Created by Russell Gordon on 2023-05-23.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        ScrollView {
            NewsItemView()
            NewsItemView()
            NewsItemView()
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .preferredColorScheme(.dark)
    }
}
