//
//  ListItem.swift
//  Moonshot
//
//  Created by Philipp Sanktjohanser on 15.12.22.
//

import SwiftUI

struct ListItem: View {
    let mission: Mission
    
    var body: some View {
        HStack(spacing: 20) {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .frame(width: 100, height: 50)
            
            Spacer()
        }
        .accessibilityElement()
        .accessibilityLabel(mission.displayName)
        .accessibilityHint(mission.formattedLaunchDate)
    }
}
