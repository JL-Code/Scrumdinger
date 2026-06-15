//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by codeme on 2026/6/15.
//

import SwiftUI

struct NewScrumSheet: View {

    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}

#Preview {
    NewScrumSheet()
}
