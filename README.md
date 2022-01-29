# GeometryReaderStackView
 A SwiftUI view that embeds a  ``GeometryReader`` into a  Stack  (``VStack``, ``HStack`` &amp; ``ZStack``) to eliminate the boiler plate code of constantly wrapping every Stack in a GeometryReader to get basic dimensions

**Installation:**   
Copy the GeometryStackViews.swift into your project


**Before this library was invented, this was how we accesed width and hieght in swiftUI**

```Swift
    GeometryReader { (geometry) in

        VStack(alignment: .center, spacing: 0) {

            Color.green.frame(width: geometry.size.width/2, height: geometry.size.height/2)
            Color.yellow.frame(width: geometry.size.width/2, height: geometry.size.height/2)

        }

    }
```

**Now with this library, you can forget about rewriting ``GeometryReader`` each time like below:**

**Example Usage - with `alignment` and `spacing` parameters**

```Swift
// notice the g parameter variable (GeometryProxy) holding the dimensions of the view

     // for VStack
     GVStack(alignment: .center, spacing: 0) { (g) in
         Color.green.frame(width: g.width/2, height: g.height/2)
         Color.yellow.frame(width: g.width/2, height: g.height/2)

     }.frame(width: 600, height: 400)
     
     // for HStack
     GHStack(alignment: .center, spacing: 0) { (g) in
         Color.green.frame(width: g.width/2, height: g.height/2)
         Color.yellow.frame(width: g.width/2, height: g.height/2)

     }.frame(width: 600, height: 400)

    // for ZStack
     GZStack(alignment: .center) { (g) in
         Color.green.frame(width: g.width/2, height: g.height/2)
         Color.yellow.frame(width: g.width/2, height: g.height/2)

     }.frame(width: 600, height: 400)
```

**Example Usage - without `alignment` and `spacing` parameters**

```Swift
// notice the g parameter variable (GeometryProxy) holding the dimensions of the view

      // for VStack
     GVStack { (g) in
         Color.green.frame(width: g.width/2, height: g.height/2)
         Color.yellow.frame(width: g.width/2, height: g.height/2)

     }.frame(width: 600, height: 400)

     // for HStack
     GHStack { (g) in
         Color.green.frame(width: g.width/2, height: g.height/2)
        Color.yellow.frame(width: g.width/2, height: g.height/2)

    }.frame(width: 600, height: 400)

    // for ZStack
    GZStack { (g) in
        Color.green.frame(width: g.width/2, height: g.height/2)
        Color.yellow.frame(width: g.width/2, height: g.height/2)

    }.frame(width: 600, height: 400)
```

Thanks to https://github.com/reuschj/RotatableStack which some of the code in this project was derived from.
