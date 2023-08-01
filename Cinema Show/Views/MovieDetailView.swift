//
//  MovieDetailView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie: MovieModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center,spacing: 20) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 235, alignment: .center)
                List{
                    ForEach(movie.actor, id: \.self){item in
                        Text(item)
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .frame(minWidth: 200, idealWidth: 200, minHeight: 200)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(movie.gallery, id: \.self) { item in
                            Image(item)
                                .resizable()
                                .scaledToFit()
                            .frame(width: 375)
                        }
                    }
                }//: ScrollView
                Text(movie.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                GroupBox{
                    HStack{
                        Image(systemName: "globe")
                        Text("Movie Website")
                        Spacer()
                        Group{
                            Image(systemName: "arrow.up.right.square")
                            Link(movie.name, destination: URL(string: movie.link) ?? URL(string: "")!)
                        }
                        .foregroundColor(.accentColor)
                        
                    }
                }
                
                
            }//: VStack
            .padding(.all, 5)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static let movies: [MovieModel] = decode(file: "movies.json")
    static var previews: some View {
        MovieDetailView(movie: movies[1])
    }
}
