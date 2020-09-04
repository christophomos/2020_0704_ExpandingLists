//
//  ContentView.swift
//  2020_0704_HowToCreateExpandingLists WatchKit Extension
//
//  Created by Chris Clark on 2020/9/4.
//

import SwiftUI

struct ContentView: View {
    var complications: [Complication] = []
    var body: some View {
        List(complications, children: \.children) { c in
            Label(c.name, systemImage: c.systemName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var complications = Complication.testData
    static var previews: some View {
        ContentView(complications: complications)
    }
}
