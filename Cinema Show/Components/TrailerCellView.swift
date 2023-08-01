//
//  TrailerCellView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//

import SwiftUI

struct TrailerCellView: View {
    
    var trailer: TrailerModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            ZStack{
                Image(trailer.thumbnail)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width: 90, height: 90, alignment: .center)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32, alignment: .center)
                    .shadow(radius: 4)
            }
            .padding(.leading, 10)
            VStack(alignment: .leading, spacing: 8){
                Text(trailer.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .layoutPriority(1)
                Text(trailer.headline)
                    .font(.footnote)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
            }
        }//: HStack
    }
}

struct TrailerCellView_Previews: PreviewProvider {
    static var trailer: [TrailerModel] = decode(file: "trailers.json")
    static var previews: some View {
        TrailerCellView(trailer: trailer[2])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
