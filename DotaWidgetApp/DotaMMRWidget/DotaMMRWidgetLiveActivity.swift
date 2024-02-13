//
//  DotaMMRWidgetLiveActivity.swift
//  DotaMMRWidget
//
//  Created by Mike Ulanov on 13.02.2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct DotaMMRWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct DotaMMRWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: DotaMMRWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension DotaMMRWidgetAttributes {
    fileprivate static var preview: DotaMMRWidgetAttributes {
        DotaMMRWidgetAttributes(name: "World")
    }
}

extension DotaMMRWidgetAttributes.ContentState {
    fileprivate static var smiley: DotaMMRWidgetAttributes.ContentState {
        DotaMMRWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: DotaMMRWidgetAttributes.ContentState {
         DotaMMRWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: DotaMMRWidgetAttributes.preview) {
   DotaMMRWidgetLiveActivity()
} contentStates: {
    DotaMMRWidgetAttributes.ContentState.smiley
    DotaMMRWidgetAttributes.ContentState.starEyes
}
