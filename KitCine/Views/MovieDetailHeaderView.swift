//
//  MovieDetailHeaderView.swift
//  KitCine
//
//  Created by Dylan Caetano on 28/04/2022.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
    
    let viewModel: MovieDetailHeaderViewModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                // Image
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        // Textes
                        Text(viewModel.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(viewModel.genres.joined(separator: " | "))
                            .foregroundColor(Color.white.opacity(0.6))
                            .font(.footnote)
                        Text(viewModel.time)
                            .foregroundColor(Color.white.opacity(0.6))
                            .font(.footnote)
                    } // VSTACK
                    Spacer()
                    // Note
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                } // HStack
                .padding()
                .padding(.top, 90)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.clear, Color.accentColor]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            } // ZSTACK
            // Description
        } // VSTACK
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
    
    static let viewModel = MovieDetailHeaderViewModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w1280/3SyG7dq2q0ollxJ4pSsrqcfRmVj.jpg"),
        title: "Spider-man",
        genres: ["Action, Aventure, Science-Fiction"],
        rating: 8.1,
        time: "2h28"
    )
    
    static var previews: some View {
        MovieDetailHeaderView(viewModel: viewModel)
        .previewLayout(.sizeThatFits)
    }
}
