//
//  TriangleView.swift
//  Triangle
//
//  Created by Logan Snopek on 2021-12-14.
//

import SwiftUI

struct TriangleView: View {
    var body: some View {
        
        VStack {
        
            Text("Side 1")
                .font(.title2)
                .bold()
            
        Slider(value: .constant(50.0),
               in: 0.0...100.0,
               label: {
                    Text("Opacity")
        },
               minimumValueLabel: {
                    Text("0")
        },
               maximumValueLabel: {
                    Text("100")
        })
                .padding()
            
            Text("Side 2")
                .font(.title2)
                .bold()
        
        Slider(value: .constant(50.0),
               in: 0.0...100.0,
               label: {
                    Text("Opacity")
        },
               minimumValueLabel: {
                    Text("0")
        },
               maximumValueLabel: {
                    Text("100")
        })
                .padding()
            
            Text("Side 3")
                .font(.title2)
                .bold()
        
        Slider(value: .constant(50.0),
               in: 0.0...100.0,
               label: {
                    Text("Opacity")
        },
               minimumValueLabel: {
                    Text("0")
        },
               maximumValueLabel: {
                    Text("100")
        })
                .padding()
            
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
