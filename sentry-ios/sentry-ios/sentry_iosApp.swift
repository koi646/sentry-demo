//
//  sentry_iosApp.swift
//  sentry-ios
//
//  Created by Yuhang on 2024/12/15.
//

import SwiftUI
import Sentry

@main
struct sentry_iosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init() {
        SentrySDK.start { options in
            
            options.dsn = ""
            options.tracesSampleRate = 1.0
            options.enableNetworkTracking = true
        }
    }
}
