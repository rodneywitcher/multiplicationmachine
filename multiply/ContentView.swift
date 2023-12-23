//
//  ContentView.swift
//  multiply
//
//  Created by Rodney Witcher, II on 12/2/21.
//

import SwiftUI
import AppTrackingTransparency

struct ContentView: View {
    var body: some View {
        BoardView()
            .padding()
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification), perform: { _ in
                NSLog("App is now active status = active")
                ATTrackingManager.requestTrackingAuthorization(completionHandler: {
                    status in
                    NSLog("main on did appear status = \(status.rawValue)")
                })
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
