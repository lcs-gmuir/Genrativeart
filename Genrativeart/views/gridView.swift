//
//  gridView.swift
//  Genrativeart
//
//  Created by Griffin Muir on 2023-10-28.
//

import SwiftUI

struct gridView: View {
    var body: some View {
Grid(horizontalSpacing: 0, verticalSpacing: 0){
            GridRow {
                ForEach(1..<4){i in
                    TitleView()
                }
             
                
            }
    GridRow{
        ForEach(1..<4){i in
            TitleView()
        }
    }
    GridRow {
        ForEach(1..<4){i in
            TitleView()
        }
    }
        }
    }
}

#Preview {
    gridView()
}
