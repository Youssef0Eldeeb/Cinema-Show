//
//  CoverView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 28/07/2023.
//

import SwiftUI

struct CoverView: View {
    
    let coverImage: [CoverModel] = decode(file: "covers.json")
    
    var body: some View {
        TabView{
            ForEach(coverImage) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
