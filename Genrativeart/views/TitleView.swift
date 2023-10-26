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
    let flipOne = Coin.tails
    let flipTwo = Coin.tails
    let markerOne = Color.blue
    let markerTwo = Color.red
    let flipThree = Coin.tails
    
    // decide the colours
    let flipForColor = Coin.heads
    
    // set colors
    var colorOne: Color {
        return flipForColor == .tails ? markerOne : markerTwo
    }
    var colorTwo: Color {
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    // determine the fil color for the other triangle
    var remainingTrianlgeFillColor: Color {
        return flipThree == .heads ? markerOne : .clear
    }
    var body: some View {

        ZStack {
            if flipOne == .heads {
                triangleTopLeft()
                    .fill(flipTwo == .heads ? colorOne: remainingTrianlgeFillColor)
                    .stroke(.black)
       .aspectRatio(1.0, contentMode: .fit)
                triangleBottomRight()
                    .fill(flipTwo == .tails ? colorOne: remainingTrianlgeFillColor )
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
              
            } else {
                triangleTopRight()
                    .fill(flipTwo == .tails ? colorOne: remainingTrianlgeFillColor)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                 
                triangleBottomLeft()
                    .fill(flipTwo == .heads ? colorOne: remainingTrianlgeFillColor)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
    }
     
}

#Preview {
    TitleView()
}
