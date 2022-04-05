//
//  ContentView.swift
//  CFB
//
//  Created by Kevin Stradtman on 4/3/22.
//

import SwiftUI




struct SupportedOrientationsPreferenceKey: PreferenceKey {
    typealias Value = UIInterfaceOrientationMask
    static var defaultValue: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return .all
        }
        else {
            return .allButUpsideDown
        }
    }
    
    static func reduce(value: inout UIInterfaceOrientationMask, nextValue: () -> UIInterfaceOrientationMask) {
        // use the most restrictive set from the stack
        value.formIntersection(nextValue())
    }
}

/// Use this in place of `UIHostingController` in your app's `SceneDelegate`.
///
/// Supported interface orientations come from the root of the view hierarchy.
class OrientationLockedController<Content: View>: UIHostingController<OrientationLockedController.Root<Content>> {
    class Box {
        var supportedOrientations: UIInterfaceOrientationMask
        init() {
            self.supportedOrientations =
                UIDevice.current.userInterfaceIdiom == .pad
                    ? .all
                    : .allButUpsideDown
        }
    }
    
    var orientations: Box!
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        orientations.supportedOrientations
    }
    
    init(rootView: Content) {
        let box = Box()
        let orientationRoot = Root(contentView: rootView, box: box)
        super.init(rootView: orientationRoot)
        self.orientations = box
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    struct Root<Content: View>: View {
        let contentView: Content
        let box: Box
        
        var body: some View {
            contentView
                .onPreferenceChange(SupportedOrientationsPreferenceKey.self) { value in
                    // Update the binding to set the value on the root controller.
                    self.box.supportedOrientations = value
            }
        }
    }
}

extension View {
    func supportedOrientations(_ supportedOrientations: UIInterfaceOrientationMask) -> some View {
        // When rendered, export the requested orientations upward to Root
        preference(key: SupportedOrientationsPreferenceKey.self, value: supportedOrientations)
    }
}





public struct ContentView: View {
    public init() {
        self.tabColor    = tabColors[0]
    }
    public var body: some View {
        NavigationView {
        TabView {
            Dashboard().tabItem {Label("Dashboard", systemImage:"list.dash")}.onAppear(perform: { tabColor = tabColors[0] })
           News().tabItem {Label("News", systemImage:"newspaper")}.onAppear(perform: { tabColor = tabColors[0] })
           League().tabItem {Label("League", systemImage:"l.circle.fill")}.onAppear(perform: { tabColor = tabColors[0] })
           Options().tabItem {Label("Options", systemImage:"gear")}.onAppear(perform: { tabColor = tabColors[0] })
        }
        .accentColor(tabColor ?? tabColors[0])
        .supportedOrientations(.portraitUpsideDown)
        .navigationTitle("Sleeper NFL Fantasy")
        .navigationBarTitleDisplayMode(.inline)
    }
    }
    @State private var animationCompletion: CGFloat = 0.0
    @State private var tabColor: Color!
}

fileprivate
let tabColors = [
    Color(.green),
]
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
