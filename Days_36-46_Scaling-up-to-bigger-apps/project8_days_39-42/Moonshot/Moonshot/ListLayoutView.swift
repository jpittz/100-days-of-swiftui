//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by James on 22/10/2023.
//

import SwiftUI

struct ListLayout: View {
    
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        VStack() {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(9)
                            .padding(.leading, 8)
                        
                        HStack {
                            Text(mission.displayName)
                                .font(.title2.bold())
                                .foregroundColor(.red.opacity(0.8))
                                .frame(width: 150)
                            
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.7))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .background(.lightBackground.opacity(0.5))
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground)
                    )
                }
            }
        }
        .padding([.horizontal, .bottom])
    }
}


struct ListLayout_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListLayout(astronauts: astronauts, missions: missions)
            .preferredColorScheme(.dark)
    }
}
