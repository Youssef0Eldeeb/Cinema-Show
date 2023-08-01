//
//  MovieCellView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 29/07/2023.
//

import SwiftUI

struct MovieCellView: View {
    
    var movie: MovieModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 90, height: 90, alignment: .center)
            VStack(alignment: .leading, spacing: 8) {
                Text(movie.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                Text(movie.headline)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static let movies: [MovieModel] = decode(file: "movies.json")
    static var previews: some View {
        MovieCellView(movie: movies[2])
    }
}
