//
//  Camera_SwiftUIApp.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import SwiftUI

@main
struct Camera_SwiftUIApp: App {
    @StateObject var cameraState = CameraState()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }.environmentObject(cameraState)
        }
    }
}
