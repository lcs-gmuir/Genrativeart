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
    var body: some View {
        ZStack {
            if flipOne == .heads {
                
            }
        }
    }
     
}

#Preview {
    TitleView()
}
