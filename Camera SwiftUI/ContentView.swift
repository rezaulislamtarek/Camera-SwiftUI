//
//  ContentView.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View, CameraViewDelegate{
    
    @State var img : UIImage? = nil
    
    @State var cameraView : CameraView?
    @State var isBackCamera : Bool = true
    
    
    
    var body: some View {
        VStack{
            cameraView
                .overlay(alignment: .bottom) {
                    HStack{
                        
                        Image(uiImage: ((img == nil ? UIImage(systemName: "photo") : img)!)  )
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40 )
                        
                        
                        
                        Spacer()
                        Button(action: {
                            cameraView?.getViewModel().capturePhoto()
                        }, label: {
                            Image(systemName: "camera.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40 )
                        })
                        Spacer()
                        Button(action: {
                            isBackCamera.toggle()
                        }, label: {
                            Image(systemName: "repeat")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                        })
                    }
                    .padding(.all, 32)
                }
        }
        .onAppear{
            cameraView = CameraView(delegate: self, cameraPosition: isBackCamera ? .back : .front)
        }
        .frame(maxHeight: .infinity)
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
    
    func didFinishCapturingPhoto(_ image: UIImage) {
        
        DispatchQueue.main.async {
            self.img = image
            print("image: \(image) img: \(self.img)")
        }
    }
}


#Preview {
    ContentView()
}
