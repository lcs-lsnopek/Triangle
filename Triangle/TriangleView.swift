//
//  TriangleView.swift
//  Triangle
//
//  Created by Logan Snopek on 2021-12-14.
//

import SwiftUI

struct TriangleView: View {
    
    //MARK: Stored proprotys
    
    @State var side1: Double = 60
    @State var side2: Double = 60
    @State var side3: Double = 60
    
    //MARK: Computed proprotes
    
    var totalOfSides: Double {
        return side1 + side2 + side3
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Angle 1")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Spacer()
                        Text("\(String(format: "%.1f", side1))")
                            .font(.title2)
                        Spacer()
                    }
                    
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
                    
                    Text("Angle 2")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Spacer()
                        Text("\(String(format: "%.1f", side2))")
                            .font(.title2)
                        Spacer()
                    }
                    
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
                    

                    
                    Text("Angle 3")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Spacer()
                        Text("\(String(format: "%.1f", side3))")
                            .font(.title2)
                        Spacer()
                    }
                    
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
                    
                }
                
                HStack {
                    Spacer()
                    Text("\(String(format: "%.1f", totalOfSides))")
                        .font(.title2)
                    Spacer()
                }
                
                if totalOfSides > 180 {
                    Text("Error")
                        .font(title2)
                        .bold()
                }
                if totalOfSides < 180 {
                    Text("Error")
                        .font(title2)
                        .bold()
                }
                if totalOfSides / 3 == side1 {
                    Text("Equlaterl")
                        .font(title2)
                        .bold()
                }
                if totalOfSides < side1 {
                    Text("Isosales")
                        .font(title2)
                        .bold()
                }
                if totalOfSides < side2 {
                    Text("Isosales")
                        .font(title2)
                        .bold()
                }
                if totalOfSides < side3 {
                    Text("Isosales")
                        .font(title2)
                        .bold()
                }
            }
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
