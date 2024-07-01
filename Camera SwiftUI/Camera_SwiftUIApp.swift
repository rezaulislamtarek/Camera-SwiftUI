//
//  Camera_SwiftUIApp.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import SwiftUI

@main
struct Camera_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environmentObject(CameraState())
    }
}
