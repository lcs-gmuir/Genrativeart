//
//  TitleView.swift
//  Genrativeart
//
//  Created by Griffin Muir on 2023-10-24.
//

import SwiftUI

    
    

struct TitleView: View {
    var body: some View {
        
        triangleToRight()
            .aspectRatio(1.0, contentMode: .fit)
        triangleBottomLeft()
            .aspectRatio(1.0, contentMode: .fit)
        triangleTopLeft()
            .aspectRatio(1.0, contentMode: .fit)
        triangleToRight()
        .aspectRatio(1.0, contentMode: .fit)
        triangleBottomRight()
            .aspectRatio(1.0, contentMode: .fit)
    
    }
     
}

#Preview {
    TitleView()
}
