//
//  ContentView.swift
//  SeveranceUI
//
//  Created by leticia.dayane on 05/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                Image("severanteBanner2")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .ignoresSafeArea(.container, edges: .top)

                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color.clear, location: 0),
                        .init(color: Color.gray.opacity(0.5), location: 0.5),
                        .init(color: Color.gray.opacity(0.02), location: 1)
                    ]),
                    startPoint: .center,
                    endPoint: .bottom
                )
                .frame(height: 150)
                .frame(maxWidth: .infinity, alignment: .bottom)
                .padding(.horizontal)
            }

                VStack(alignment: .leading, spacing: 8) {
                    Text("Ruptura")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Drama psicológico • 2022 • +16")
                        .font(.subheadline)
                }
                .padding(.leading, 30)
                .padding(.top, -30)
        }

        ScrollView {
            VStack(alignment: .leading) {
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Label("Assistir", systemImage: "play.fill")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                    Button(action: {}) {
                        Label("Baixar", systemImage: "arrow.down.circle")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
                .padding()

                Text("Mark lidera uma equipe no Lumon Industries cujos funcionários foram submetidos a um procedimento de separação entre suas memórias pessoais e profissionais.")
                    .font(.body)
                    .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Episódios")
                        .font(.title2)
                        .fontWeight(.semibold)

                    EpisodeRow(title: "Episódio 1", description: "Boa sorte em sua primeira jornada no andar Macrodata Refinement.")
                    EpisodeRow(title: "Episódio 2", description: "Mark encontra uma gravação misteriosa no elevador.")
                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Você também pode gostar")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0..<5) { _ in
                                Image("sugestionPoster")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 180)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct EpisodeRow: View {
    var title: String
    var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.semibold)
            Text(description)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ContentView()
}

