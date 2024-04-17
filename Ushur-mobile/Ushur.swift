// The Swift Programming Language
// https://docs.swift.org/swift-book
import UIKit

public class Ushur {
    public static let shared = Ushur()
    public static var environment: String = "ushur_ios_sdk"
    public static var portalUrl: String = "https://qa3.ushur.app/ip/640c1e2e8e89b05575984e98"

    init() {}
    
    public static func configure(portalId: String, apiKey: String, sdkKey: String? = nil, allowErrorLogging: Bool = true) {
        
        print("Configuration success")
        
        // Get Portal URL from backend
        //Set portalUrl Value
    }
    
   
    public static func render() {
        let vc = ApplicationView() //change this to your class name
        if let topController = UIApplication.topViewController() {
            topController.present(vc, animated: true, completion: nil)
        }
    }

}



