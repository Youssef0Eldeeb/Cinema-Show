//
//  BrowserView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 28/07/2023.
//

import SwiftUI

struct BrowserView: View {
    
    var movies: [MovieModel] = decode(file: "movies.json")
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                   CoverView()
                        .frame(height: 235)
                    ForEach(movies) { movie in
                        NavigationLink{
                            MovieDetailView(movie: movie)
                        }label: {
                            MovieCellView(movie: movie)
                        }
                        
                    }
                    HStack{
                        Spacer()
                        Image("camera")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Text("All reights reserved")
                        Spacer()
                    }
                }
            }
            .navigationTitle("Browser")
        }
    }
}

struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView()
            .preferredColorScheme(.dark)
    }
}
