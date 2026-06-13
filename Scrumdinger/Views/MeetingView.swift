//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/13.
//

import SwiftUI
import TimerKit
import ThemeKit

struct MeetingView: View {

  @Binding var scrum: DailyScrum
  @State var scrumTimer = ScrumTimer()

  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 16.0)
        .fill(scrum.theme.mainColor)
      VStack {
        ProgressView(value: 5, total: 15)
        MeetingHeaderView(
          secondsElapsed: scrumTimer.secondsElapsed,
          secondsRemaining: scrumTimer.secondsRemaining,
          theme: scrum.theme)
        Circle()
          .strokeBorder(lineWidth: 24)
        HStack {
          Text("Speaker 1 of 3")
          Spacer()
          Button(action: {}) {
            Image(systemName: "forward.fill")
          }
          .accessibilityLabel("Next speaker")
        }
      }
    }
    .padding()
    .foregroundColor(scrum.theme.accentColor)
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  @Previewable @State var scrum = DailyScrum.sampleData[0]
  MeetingView(scrum: $scrum)
}
