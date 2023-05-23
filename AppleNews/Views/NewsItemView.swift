//
//  NewsItemView.swift
//  AppleNews
//
//  Created by Russell Gordon on 2023-05-23.
//

import SwiftUI

struct NewsItemView: View {
    
    // MARK: Stored properties
    let image: String
    let source: String
    let headline: String
    let timeSincePosted: String
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
            
            Image(source)
                .resizable()
                .scaledToFit()

            Text(headline)
                .font(.title)
                .fontWeight(.semibold)
            
            Divider()
            
            HStack {
                Text(timeSincePosted)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .foregroundColor(.secondary)
            .padding(15)
        }
        .background(Color("ArticleSlugBackground"))
        .cornerRadius(25)
    }
}

struct NewsItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewsItemView(image: "Carroll",
                     source: "Reuters",
                     headline: "E. Jean Carroll seeks $10 million in damages from Trump over post-verdict statements",
                     timeSincePosted: "1h ago")
            .preferredColorScheme(.dark)
    }
}
