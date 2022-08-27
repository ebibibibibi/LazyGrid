//
//  ContentView.swift
//  LazyGrid
//
//  Created by kotomi tahkahashi on 2022/08/25.
//

import SwiftUI

struct ContentView: View {
    let contentWidth = UIScreen.main.bounds.size.width * 1 / 4
    let columns = [GridItem(.fixed(80), spacing: 18)]
    let columnss = [GridItem(.flexible(minimum: 80, maximum: 85), spacing: 18)]
    let columnsss = [GridItem(.adaptive(minimum: 80), spacing: 18)]
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                /// ここのspacingは行間(縦)を指定している。
                LazyVGrid(columns: columnsss, spacing: 30, pinnedViews: .sectionHeaders) {
                    Section(header: Text("**ヘッダーだよ**")) {
                        ForEach(0...2, id: \.self) { data in
                            VStack {
                                Rectangle()
                                    .frame(width: contentWidth, height: contentWidth * 0.57)
                                    .foregroundColor(Color("liteBlue"))
                            }
                        }
                    }
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



