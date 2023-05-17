//
//  PoemArray.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/11/23.
//

import SwiftUI
import Foundation

struct PoemArray {
//    var backgroundImage: String
    var titleText: any View
    var poemText: String
}

let poemArray = [
    PoemArray(titleText: testHowToFishView(),
                poemText: """
                imagine an imposter among us
                hooked on each line; it’s justice
                it’s just us; a reality cast from each reel
                syndromes ripple in form of what’s real
                """
    ),
    PoemArray(titleText: testGoneFishinTextView(),
                poemText:"""
                         routinely naïve
                         it’s the definition of insanity
                         too careless to conceive
                         each vice manifested in vanity
                         
                         blinded by the forest for the trees
                         unaware of the lake from the seas
                         stir crazy; an idiomatic glass house
                         you can’t hide from yourself
                         """
    ),
    PoemArray(titleText: testFirstCatchView(),
                poemText: """
                 the excitement of completion
                 a thrill undefeated; conceited
                 surrounded by an isolated hue
                 encouraged by the calming view
                 \n
                 
                 an emotional freight trained off track
                 a master in the making; a progress to track
                 from humble beginnings; a process to trust
                 the first to tarnish from an everlasting rust
                 """
    ),
    PoemArray(titleText: testCatchNReleaseView(),
                poemText: """
                         behind the scenes of curiosity
                         you’ll meet every opportunity
                         a constant fight; a timeless bout
                         counting losses, grudges, and doubt
                         \n just let it go..
                         """
    ),
    PoemArray(titleText: testTrophiesView(),
                poemText: """
                 prized catches dripping wet
                 a mount to nothing
                 except golden silhouettes
                 an amount of nothing
                 accept the cost of regrets
                 some amount to something
                 an interest left to recollect
                 """
    )
]
