//
//  ContentView.swift
//  Moonshot
//
//  Created by Philipp Sanktjohanser on 14.12.22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridView()
                } else {
                    ListView()
                }
            }
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    Image(systemName: "eye.fill")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
