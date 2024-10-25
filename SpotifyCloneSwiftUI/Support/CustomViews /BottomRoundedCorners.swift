//
//  B.swift
//  SpotifyCloneSwiftUI
//
//  Created by Neosoft on 24/10/24.
//


import SwiftUI

struct BottomRoundedCorners: Shape {
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY)) // Top left
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // Top right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius)) // Bottom right corner
        path.addArc(center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius), radius: radius, startAngle: .zero, endAngle: .degrees(90), clockwise: false) // Bottom right arc
        path.addLine(to: CGPoint(x: rect.minX + radius, y: rect.maxY)) // Bottom left corner
        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false) // Bottom left arc
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // Close the path
        
        return path
    }
}
