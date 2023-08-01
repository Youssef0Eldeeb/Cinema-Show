//
//  TrailerPlayerView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//
import AVKit
import SwiftUI

struct TrailerPlayerView: View {
    var trailer: String
    var body: some View {
        Text("TrailerPlayerView")
//        VideoPlayer(player: playVideo(fileName: trailer, fileFormat: "mp4"))
//            .overlay{
//                HStack {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 32, height: 32, alignment: .center)
//                        .padding(.horizontal, 8)
//
//                    Text(trailer)
//                        .font(.title3)
//                        .padding()
//                        .foregroundColor(.accentColor)
//                }
//            }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    
    static var previews: some View {
        TrailerPlayerView(trailer: "moonfall")
    }
}
