//
//  TitleView.swift
//  Genrativeart
//
//  Created by Griffin Muir on 2023-10-24.
//

import SwiftUI

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        let decision = Bool.random()
        
        if decision == true {
            return .heads
        } else {
            return .tails
        }
    }
    
}

    

struct TitleView: View {
    let flipOne = Coin.flip()
    let flipTwo = Coin.flip()
    let markerOne = Color.blue
    let markerTwo = Color.red
    
    // decide the colours
    let flipForColor = Coin.flip()
    
// set colors
    var colorOne: Color {
        if flipForColor == .heads {
            return markerOne
        } else {
            return markerTwo
        }
    }
    var colorTwo: Color {
        if flipForColor == .heads {
            return markerTwo
        }
        return markerOne
    }
    var body: some View {
        ZStack {
            if flipOne == .heads {
                triangleTopLeft()
                    .fill(colorOne)
       .aspectRatio(1.0, contentMode: .fit)
                triangleBottomRight()
                    .fill(colorTwo)
                    .aspectRatio(1.0, contentMode: .fit)
              
            } else {
                triangleTopRight()
                    .aspectRatio(1.0, contentMode: .fit)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                triangleBottomLeft()
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
    }
     
}

#Preview {
    TitleView()
}
