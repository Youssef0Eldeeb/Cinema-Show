//
//  CinemaAnnotaion.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 30/07/2023.
//

import SwiftUI

struct CinemaAnnotaion: View {
    
    var location: CinemaLocation
    @State var animation: Double = 0.0
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 50, height: 50, alignment: .center)
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 45, height: 45, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct CinemaAnnotaion_Previews: PreviewProvider {
    static var locations: [CinemaLocation] = decode(file: "locations.json")
    static var previews: some View {
        CinemaAnnotaion(location: locations[1])
    }
}
