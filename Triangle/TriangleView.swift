//
//  TriangleView.swift
//  Triangle
//
//  Created by Logan Snopek on 2021-12-14.
//

import SwiftUI

struct TriangleView: View {
    
    //MARK: Stored proprotys
    
    @State var side1: Double = 50
    @State var side2: Double = 50
    @State var side3: Double = 50
    
    //MARK: Computed proprotes
    
    var totalOfSides: Double {
        return side1 + side2 + side3
    }
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text("Side 1")
                    .font(.title2)
                    .bold()
                
                Slider(value: $side1,
                       in: 0.0...179.0,
                       label: {
                    Text("Opacity")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("179")
                })
                    .padding()
                
                Text("Side 2")
                    .font(.title2)
                    .bold()
                
                Slider(value: $side2,
                       in: 0.0...179.0,
                       label: {
                    Text("Opacity")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("179")
                })
                    .padding()
                
                Text("Side 3")
                    .font(.title2)
                    .bold()
                
                Slider(value: $side3,
                       in: 0.0...179.0,
                       label: {
                    Text("Opacity")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("179")
                })
                    .padding()
                
                Text("\(totalOfSides)")
                
            }
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
