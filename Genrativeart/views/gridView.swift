//
//  gridView.swift
//  Genrativeart
//
//  Created by Griffin Muir on 2023-10-28.
//

import SwiftUI

struct gridView: View {
    @State var rows = 4.0
    @State var columns = 4.0

    var body: some View {
Grid(horizontalSpacing: 0, verticalSpacing: 0){
    
    ForEach(0..<Int(rows), id: \.self) { j in
        GridRow {
            ForEach(0..<Int(columns), id: \.self){i in
                TitleView()
            }
        }
    }

  
        }
        Text("\(rows)")

Slider(value: $columns, in: 0...100, step: 1.0)
        
        
Slider(value: $rows, in: 0...100, step: 1.0)
        Text("\(columns)")

    }
}

#Preview {
    gridView()
}
