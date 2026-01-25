//
//  CodeBreaker.swift
//  iosStanford
//
//  Created by Paulo Marcelo Santos on 25/01/26.
//

import SwiftUI

struct CodeBreaker: View {
    var body: some View {
        VStack{
            pegs(colors: [.red, .green, .green,.yellow])
            pegs(colors: [.red, .blue, .green,.red])
            pegs(colors: [.red, .yellow, .green, .blue])
        }
        .padding()
    }
    
    
    func pegs(colors: Array<Color>) -> some View {
        HStack{
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
        }
    }
}

#Preview {
    CodeBreaker()
}
