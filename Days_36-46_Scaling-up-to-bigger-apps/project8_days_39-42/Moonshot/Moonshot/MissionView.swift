//
//  MissionView.swift
//  Moonshot
//
//  Created by James on 20/10/2023.
//

import SwiftUI

struct HighlightsView: View {
    
    let mission: Mission
    
    var body: some View {
        Text("Mission Highlights")
            .font(.title.bold())
            .foregroundColor(.red.opacity(0.8))
            .padding(.bottom, 5)
        
        Text(mission.description)
            .padding(.bottom)

    }
}

struct CrewScrollView: View {
    
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.trailing)
                        .overlay(
                            Capsule()
                                .strokeBorder(.red.opacity(0.8), lineWidth: 1)
                        )
                        .padding(.trailing, 12)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct MissionView: View {
    
    @State private var animationAmount = 0.0
    
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    
    let mission: Mission
    let crew: [CrewMember]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding()
                        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.05, y: 1, z: 0.05))
                        .onAppear {
                            if animationAmount == 0 {
                                DispatchQueue.main.async {
                                    withAnimation(.interpolatingSpring(stiffness: 11, damping: 4)) { //stiffness: 35, damping: 12
                                        animationAmount += 360
                                    }
                                }
                            }
                        }
                    
                    Text(mission.formattedLaunchDate)
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.5))
                        .padding(3)
                    
                    VStack(alignment: .leading) {
                        HighlightsView(mission: mission)
                        
                        Text("Crew")
                            .font(.title.bold())
                            .foregroundColor(.red.opacity(0.8))
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                    
                    CrewScrollView(crew: crew)
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
    
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        MissionView(mission: missions[0], astronauts: astronauts)
            .preferredColorScheme(.dark)
    }
}
