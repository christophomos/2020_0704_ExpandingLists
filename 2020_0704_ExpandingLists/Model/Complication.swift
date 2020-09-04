//
//  Complication.swift
//  2020_0704_HowToCreateExpandingLists WatchKit Extension
//
//  Created by Chris Clark on 2020/9/4.
//

import Foundation
import SwiftUI

struct Complication: Identifiable {
    let id = UUID()
    let name: String
    let systemName: String
    var children: [Complication]?
    
    static let testData = [
        Complication(
            name: "Creatures",
            systemName: "smallcircle.fill.circle",
            children: [
                Complication(
                    name: "Ant",
                    systemName: "ant.fill"),
                Complication(
                    name: "Rabbit",
                    systemName: "hare")
            ]
        ),
        Complication(
            name: "Forces of Nature",
            systemName: "leaf.arrow.circlepath",
            children: [
                Complication(
                    name: "Lightning",
                    systemName: "bolt.fill"),
                Complication(
                    name: "Fire",
                    systemName: "flame.fill")
            ]
        )
    ]
}
