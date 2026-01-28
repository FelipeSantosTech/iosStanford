//
//  MatchMarkers.swift
//  iosStanford
//
//  Created by Paulo Marcelo Santos on 25/01/26.
//

import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}


struct MatchMarkers: View {
    var matches: [Match]
    
    var body: some View {
        HStack{
            VStack{
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack{
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }
    
@ViewBuilder // ? is like a if left true 1st, else 2nd
func matchMarker(peg: Int) -> some View {
    let exactCount = matches.count{$0 == .exact}
    let foundCount = matches.count{$0 != .nomatch}
     Circle()
        .fill(exactCount > peg ? Color.primary : Color.clear)
        .strokeBorder(foundCount > peg ? Color.primary : Color.clear,
                      lineWidth: 2).aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    MatchMarkers(matches: [.exact, .inexact, .nomatch])
}
