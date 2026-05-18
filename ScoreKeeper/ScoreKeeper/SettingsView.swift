//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by jihoon jang on 5/18/26.
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()

            Picker("Starting Points", selection: $startingPoints) {
                Text("0 starting points").tag(0)
                Text("5 starting points").tag(5)
                Text("10 starting points").tag(10)
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(.thinMaterial)
        }
    }
}

#Preview {
    @Previewable @State var startingPoints = 0
    SettingsView(startingPoints: $startingPoints)
}
