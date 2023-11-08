//
//  ContentView.swift
//  swiftUI_videos
//
//  Created by anshul on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var videos:[Video] = []
    
    var body: some View {
        NavigationView {
            List(videos){ video in
                HStack{
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading){
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        Spacer().frame(height: 5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }.navigationBarTitle(Text("Sean's Videos"))
        }
    }
}

#Preview {
    ContentView(videos: VideoList.topTwelve )
}
