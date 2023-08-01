//
//  GalleryView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 28/07/2023.
//

import SwiftUI

struct GalleryView: View {
    
    @State var layoutColums: Int = 2
    @State var layout: [GridItem] = Array(repeating: GridItem(), count: 3)
    let movies: [MovieModel] = decode(file: "movies.json")
    @State var selectedImage: String = "men-in-black"
    @State var buttonImage: String = "square.grid.3x2"
    
    private func switchLayout(){
        if layoutColums == 1{
            layoutColums = 2
            buttonImage = "square.grid.3x3"
        }else if layoutColums == 2{
            layoutColums = 3
            buttonImage = "square.grid.3x3"
        }else if layoutColums == 3{
            layoutColums = 4
            buttonImage = "square.grid.2x2"
        }else{
            layoutColums = 1
            buttonImage = "square.grid.2x2"
        }
        layout = Array(repeating: GridItem(), count: layoutColums)
    }
    
    var body: some View {
        
        NavigationView {
            VStack{
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(height: 300, alignment: .center)
                    .padding(5)
                Divider()
                ScrollView(.vertical) {
                    LazyVGrid(columns: layout) {
                        ForEach(movies) { item in
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .onTapGesture {
                                    selectedImage = item.image
                                }
                        }
                    }
                    .padding(5)
                }
            }//: VStack
            .navigationTitle("Gallery")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        switchLayout()
                    } label: {
                        Image(systemName: buttonImage)
                    }

                }
            }
        }
        
    }

}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
