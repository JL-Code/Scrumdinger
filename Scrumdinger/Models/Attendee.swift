//
//  Attendee.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/15.
//
import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
  var id: UUID
  var name: String
  var dailyScrum: DailyScrum?

  init(id: UUID = UUID(), name: String) {
    self.id = id
    self.name = name
  }
}
