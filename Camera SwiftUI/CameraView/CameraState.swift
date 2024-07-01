//
//  CameraState.swift
//  Camera SwiftUI
//
//  Created by Rezaul Islam on 1/7/24.
//

import Foundation
import UIKit

public class CameraState : NSObject, ObservableObject {
    @Published public var capturedImage : UIImage?
    @Published public var capturedImageError : Error?
}
