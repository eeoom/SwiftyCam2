/*Copyright (c) 2016, Andrew Walz.
 
 Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:
 
 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 
 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the
 documentation and/or other materials provided with the distribution.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS
 BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. */


import UIKit
import AVFoundation

// MARK: Public Protocol Declaration

/// Delegate for SwiftyCam2ViewController

public protocol SwiftyCam2ViewControllerDelegate: AnyObject {
    
    /**
     SwiftyCam2ViewControllerDelegate function called when when SwiftyCam2ViewController session did start running.
     Photos and video capture will be enabled.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController
     */
    
    func swiftyCamSessionDidStartRunning(_ swiftyCam: SwiftyCam2ViewController)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when when SwiftyCam2ViewController session did stops running.
     Photos and video capture will be disabled.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController
     */
    
    func swiftyCamSessionDidStopRunning(_ swiftyCam: SwiftyCam2ViewController)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when the takePhoto() function is called.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter photo: UIImage captured from the current session
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didPreviewPhoto photo: UIImage)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController begins recording video.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter camera: Current camera orientation
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didBeginRecordingVideo camera: SwiftyCam2ViewController.CameraSelection)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController finishes recording video.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter camera: Current camera orientation
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFinishRecordingVideo camera: SwiftyCam2ViewController.CameraSelection)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController is done processing video.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter url: URL location of video in temporary directory
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFinishProcessVideoAt url: URL)
    
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController fails to record a video.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter error: An error object that describes the problem
     */
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFailToRecordVideo error: Error)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController switches between front or rear camera.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter camera: Current camera selection
     */
    
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didSwitchCameras camera: SwiftyCam2ViewController.CameraSelection)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when SwiftyCam2ViewController view is tapped and begins focusing at that point.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter point: Location in view where camera focused
     
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFocusAtPoint point: CGPoint)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when when SwiftyCam2ViewController view changes zoom level.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController session
     - Parameter zoom: Current zoom level
     */
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didChangeZoomLevel zoom: CGFloat)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when when SwiftyCam2ViewController fails to confiture the session.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController
     */
    
    func swiftyCamDidFailToConfigure(_ swiftyCam: SwiftyCam2ViewController)
    
    /**
     SwiftyCam2ViewControllerDelegate function called when when SwiftyCam2ViewController does not have access to camera or microphone.
     
     - Parameter swiftyCam: Current SwiftyCam2ViewController
     */
    
    func swiftyCamNotAuthorized(_ swiftyCam: SwiftyCam2ViewController)
}

public extension SwiftyCam2ViewControllerDelegate {
    
    func swiftyCamSessionDidStopRunning(_ swiftyCam: SwiftyCam2ViewController) {
        // Optional
    }
    
    func swiftyCamSessionDidStartRunning(_ swiftyCam: SwiftyCam2ViewController) {
        // Optional
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didPreviewPhoto photo: UIImage) {
        // Optional
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didBeginRecordingVideo camera: SwiftyCam2ViewController.CameraSelection) {
        // Optional
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFinishRecordingVideo camera: SwiftyCam2ViewController.CameraSelection) {
        // Optional
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFinishProcessVideoAt url: URL) {
        // Optional
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFailToRecordVideo error: Error) {
        // Optional
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didSwitchCameras camera: SwiftyCam2ViewController.CameraSelection) {
        // Optional
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didFocusAtPoint point: CGPoint) {
        // Optional
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCam2ViewController, didChangeZoomLevel zoom: CGFloat) {
        // Optional
    }
    
    func swiftyCamDidFailToConfigure(_ swiftyCam: SwiftyCam2ViewController) {
        // Optional
    }
    
    func swiftyCamNotAuthorized(_ swiftyCam: SwiftyCam2ViewController) {
        // Optional
    }
}



