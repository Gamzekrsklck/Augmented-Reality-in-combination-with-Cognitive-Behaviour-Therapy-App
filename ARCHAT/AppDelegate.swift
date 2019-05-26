//
//  AppDelegate.swift
//  ARCHAT
//
//  Created by Temurhon  on 23/04/2019.
//  Copyright © 2019 Temurhon . All rights reserved.
//https://github.com/dialogflow/dialogflow-apple-client/blob/master/ApiAIDemoSwift/ApiAIDemoSwift/AppDelegate.swift    for app delegate dialogflow.

import UIKit
import ApiAI
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let configuration: AIConfiguration = AIDefaultConfiguration()
        configuration.clientAccessToken = "e1debe43d9b34481a0abf84a5488ea63"
        //you would find the client access token in settings section of your agent at Dialogflow
        let apiai = ApiAI.shared()
        apiai?.configuration = configuration
        return true
    }




}

