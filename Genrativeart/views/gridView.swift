//
//  gridView.swift
//  Genrativeart
//
//  Created by Griffin Muir on 2023-10-28.
//

import SwiftUI

struct gridView: View {
    @State var rows = 4.0
    @State var columns = 4
    

    var body: some View {
Grid(horizontalSpacing: 0, verticalSpacing: 0){
    
    ForEach(0..<rows, id: \.self) { j in
        GridRow {
            ForEach(0..<columns, id: \.self){i in
                TitleView()
            }
        }
    }

  
        }
Slider(value: $columns, in: 0...100, step: 1.0)
        
    }
}

#Preview {
    gridView()
}
