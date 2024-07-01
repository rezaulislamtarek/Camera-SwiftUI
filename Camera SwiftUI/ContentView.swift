//
//  ContentView.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import SwiftUI

struct ContentView: View , CameraViewDelegate {
   var cameraView = CameraView()
    var body: some View {
            ZStack {
                cameraView
                    .frame(maxHeight: .infinity)
                Button("Capture"){
                    cameraView.getViewModel().capturePhoto()
                }
            }
            .edgesIgnoringSafeArea(.all)
    }
}


extension ContentView{
    func cameraAccessGranted() {
        
    }
    
    func cameraAccessDenied() {
        
    }
    
    func noCameraDetected() {
        
    }
    
    func cameraSessionStarted() {
        
    }
}

#Preview {
    ContentView()
}
