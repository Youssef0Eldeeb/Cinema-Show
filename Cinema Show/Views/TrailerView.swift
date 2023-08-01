//
//  TrailerView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 28/07/2023.
//

import SwiftUI

struct TrailerView: View {
    
    let trailer: [TrailerModel] = decode(file: "trailers.json")
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(trailer) { item in
                    NavigationLink {
                        TrailerPlayerView(trailer: item.id)
                    } label: {
                        TrailerCellView(trailer: item)
                    }

                    TrailerCellView(trailer: item)
                }
            }
            .navigationTitle("Movie Trailers")
        }
    }
}

struct TrailerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerView()
    }
}
