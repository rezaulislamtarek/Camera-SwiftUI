//
//  CameraViewDelegate.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import Foundation
import UIKit

public protocol CameraViewDelegate {
    func cameraAccessGranted()
    func cameraAccessDenied()
    func noCameraDetected()
    func cameraSessionStarted()
    func didFinishCapturingPhoto(_ image: UIImage)
}
