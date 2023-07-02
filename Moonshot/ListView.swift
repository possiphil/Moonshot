//
//  ListView.swift
//  Moonshot
//
//  Created by Philipp Sanktjohanser on 15.12.22.
//

import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                ListItem(mission: mission)
            }
            .listRowBackground(Color.lightBackground)
        }
        .listStyle(.plain)
        .edgesIgnoringSafeArea(.bottom)
        .navigationTitle("Moonshot")
        .background(.darkBackground)
        .preferredColorScheme(.dark)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .preferredColorScheme(.dark)
    }
}
