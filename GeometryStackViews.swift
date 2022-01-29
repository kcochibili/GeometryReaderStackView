//
//  GeometryStackViews.swift

//
//  Created by KC Ochibili on 1/29/2022.
//  Copyright © 2022. All rights reserved.
//

import SwiftUI

/**
 A SwiftUI view that embeds a  `GeometryReader` into a  `VStack`  to eliminate the boiler plate code of constantly wrapping every VStack in a GeometryReader to get basic dimensions
 */
@available(iOS 13.0, *)
@available(OSX 10.15, *)
@available(watchOS 6.0, *)
public struct GVStack<Content>: View where Content : View {
    
    /// Stores the content function builder
    public var content: (GeometryProxy) -> Content
    
    public var alignment: HorizontalAlignment = .center;
    public var spacing: CGFloat? = nil;
    
    /// Creates a Vertical  stack with the given spacing and horizontal alignment. This view comes with a `GeometryReader` built in.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack. This
    ///     guide has the same vertical screen coordinate for every child view.
    ///   - spacing: The distance between adjacent subviews, or `nil` if you
    ///     want the stack to choose a default distance for each pair of
    ///     subviews.
    ///   - content: A view builder that creates the content of this stack.
    @inlinable public init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        self.content = content
        
        self.alignment = alignment;
        self.spacing = spacing;
        
        
    }
    

    
    public var body: some View {
        GeometryReader { geometry in
            
            VStack (alignment: self.alignment, spacing: self.spacing){
                self.content(geometry)
            }

        }
    }
}





/**
 A SwiftUI view that embeds a  `GeometryReader` into a  `HStack`  to eliminate the boiler plate code of constantly wrapping every HStack in a GeometryReader to get basic dimensions
 */
@available(iOS 13.0, *)
@available(OSX 10.15, *)
@available(watchOS 6.0, *)
public struct GHStack<Content>: View where Content : View {
    
    /// Stores the content function builder
    public var content: (GeometryProxy) -> Content
    
    public var alignment: VerticalAlignment = .center;
    public var spacing: CGFloat? = nil;
    
    /// Creates a Horizontal  stack with the given spacing and horizontal alignment. This view comes with a `GeometryReader` built in.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack. This
    ///     guide has the same vertical screen coordinate for every child view.
    ///   - spacing: The distance between adjacent subviews, or `nil` if you
    ///     want the stack to choose a default distance for each pair of
    ///     subviews.
    ///   - content: A view builder that creates the content of this stack.
    @inlinable public init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        self.content = content
        
        self.alignment = alignment;
        self.spacing = spacing;
        
        
    }
    

    
    public var body: some View {
        GeometryReader { geometry in
            
            HStack (alignment: self.alignment, spacing: self.spacing){
                self.content(geometry)
            }

        }
    }
}



/**
 A SwiftUI view that embeds a  `GeometryReader` into a  `ZStack`  to eliminate the boiler plate code of constantly wrapping every ZStack in a GeometryReader to get basic dimensions
 */
@available(iOS 13.0, *)
@available(OSX 10.15, *)
@available(watchOS 6.0, *)
public struct ZHStack<Content>: View where Content : View {
    
    /// Stores the content function builder
    public var content: (GeometryProxy) -> Content
    
    public var alignment: Alignment = .center;
    
    /// A view that overlays its children, aligning them in both axes.
    ///
    /// The `ZStack` assigns each successive child view a higher z-axis value than
    /// the one before it, meaning later children appear "on top" of earlier ones. This view comes with a `GeometryReader` built in.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack on both
    ///     the x- and y-axes.
    ///   - content: A view builder that creates the content of this stack.
    @inlinable public init(alignment: Alignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        
        self.content = content
        
        self.alignment = alignment;
        
        
    }
    

    
    public var body: some View {
        GeometryReader { geometry in
            
            ZStack (alignment: self.alignment){
                self.content(geometry)
            }

        }
    }
}


// intended for accessing width and height easily from the GeometryReader class

extension GeometryProxy {
    var width: CGFloat {
        return self.size.width
    }
    
    var height: CGFloat {
        return self.size.height
    }
    
}
