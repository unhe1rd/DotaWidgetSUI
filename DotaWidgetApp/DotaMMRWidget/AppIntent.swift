//
//  AppIntent.swift
//  DotaMMRWidget
//
//  Created by Mike Ulanov on 13.02.2024.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "Dota2 MMR Tracker"
    static var description = IntentDescription("Dota2 MMR Tracker")

    // An example configurable parameter.
    @Parameter(title: "MMR", default: "1280")
    var favoriteEmoji: String
}
