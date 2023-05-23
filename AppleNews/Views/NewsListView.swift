//
//  NewsListView.swift
//  AppleNews
//
//  Created by Russell Gordon on 2023-05-23.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        VStack {
            Image("Farming")
                .resizable()
                .scaledToFit()
            
            Image("GlobeAndMail")
                .resizable()
                .scaledToFit()

            Text("Maritime farmers holding breath as record-dry spring wrings region")
                .font(.title)
                .fontWeight(.semibold)
            
            Divider()
            
            HStack {
                Text("1h ago")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .foregroundColor(.secondary)
            .padding(15)
        }
        .background(Color("ArticleSlugBackground"))
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
