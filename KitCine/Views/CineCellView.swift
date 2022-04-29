//
//  CineCellView.swift
//  KitCine
//
//  Created by Dylan Caetano on 26/04/2022.
//

import SwiftUI
import Kingfisher

struct CineCellView: View {
    
    let viewModel: CineCellViewModel
    
    var body: some View {
        HStack {
            KFImage(viewModel.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 126)
                .clipped()
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 8.0) {
                HStack {
                    VStack(alignment: .leading, spacing: 3.0) {
                        Text(viewModel.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        Text("Film | \(viewModel.genres.joined(separator: " | "))")
                            .foregroundColor(.white.opacity(0.5))
                            .font(.caption)
                            .lineLimit(1) // Une Seule ligne limite
                    } // VSTACK
                    Spacer() // Espace
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                } // HSTACk
                Text(viewModel.description)
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(3)
            } // VSTACK
        } // HSTACK
        .padding(8.0)
        .background(Color.accentColor)
        .foregroundColor(.white)
    }
}

struct CineCellView_Previews: PreviewProvider {
    
    static let viewModel = CineCellViewModel(
        image: URL(string: "https://www.themoviedb.org/t/p/w1280/3SyG7dq2q0ollxJ4pSsrqcfRmVj.jpg"),
        title: "Spider-man No Way Home",
        genres: ["Action", "Aventure", "Science-Fiction"],
        rating: 8.1,
        description: "Après les évènements liés à l'affrontement avec Mystério, l'identité secrète de Spider-Man a été révélée. Il est poursuivi par le gouvernement américain, qui l'accuse du meurtre de Mystério, et est traqué par les médias. Cet évènement a également des conséquences terribles sur la vie de sa petite-amie M. J. et de son meilleur ami Ned. Désemparé, Peter Parker demande alors de l'aide au Docteur Strange. Ce dernier lance un sort pour que tout le monde oublie que Peter est Spider-Man. Mais les choses ne se passent pas comme prévu et cette action altère la stabilité de l'espace-temps. Cela ouvre le « Multivers », un concept terrifiant dont ils ne savent quasiment rien."
    )
    
    static var previews: some View {
        CineCellView(viewModel: viewModel)
            .previewLayout(.sizeThatFits)
    }
}
