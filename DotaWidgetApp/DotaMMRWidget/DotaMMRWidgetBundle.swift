//
//  DotaMMRWidgetBundle.swift
//  DotaMMRWidget
//
//  Created by Mike Ulanov on 13.02.2024.
//

import WidgetKit
import SwiftUI

@main
struct DotaMMRWidgetBundle: WidgetBundle {
    var body: some Widget {
        DotaMMRWidget()
        DotaMMRWidgetLiveActivity()
    }
}
