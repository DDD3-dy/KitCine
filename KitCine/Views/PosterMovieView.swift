//
//  PosterMovieView.swift
//  KitCine
//
//  Created by Dylan Caetano on 27/04/2022.
//

import SwiftUI
import Kingfisher

struct PosterMovieView: View {
    
    let viewModel: PosterMovieViewModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 150)
                    .clipped()
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(viewModel.title)
                        .font(.system(size: 8.0))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text(viewModel.description)
                        .foregroundColor(Color.white.opacity(0.5))
                        .lineLimit(2)
                        .font(.system(size: 5.0))
                } // VSTACK
                .padding(4.0)
                .padding(.top, 50)
                .frame(width: 100)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.clear, Color.accentColor]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            } // ZSTACK
            .cornerRadius(12)
        } // VSTACK
    }
}

struct PosterMovieView_Previews: PreviewProvider {
    
    static let viewModel = PosterMovieViewModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w1280/t9JGg10CW1DzXEdWL54ewkUko6N.jpg"),
        title: "The Batman",
        description: "Durant les deux années passées à arpenter les rues en tant que Batman, Bruce Wayne s'est aventuré au cœur des ténèbres de Gotham City. Disposant de seulement quelques alliés de confiance au sein du monde corrompu qu'est l'élite de la ville, le justicier solitaire s'est imposé comme l'unique incarnation de la vengeance parmi ses concitoyens. Lorsqu'un meurtrier s'en prend aux plus grandes personnalités de Gotham à l'aide de machinations sadiques, le plus grand détective du monde se lance dans une enquête dans la pègre en suivant des indices mystérieux, croisant ainsi Selina Kyle, alias Catwoman, Oswald Cobblepot, alias le Pingouin, Carmine Falcone et Edward Nashton, alias le Sphinx. Alors que les pistes et les plans du criminel s'éclaircissent, Batman doit tisser de nouveaux liens, démasquer le coupable et rétablir la justice à Gotham City, depuis trop longtemps empoisonnée par l'abus de pouvoir et la corruption."
    )
    
    static var previews: some View {
        PosterMovieView(viewModel: viewModel)
            .padding(8)
            .background(Color.accentColor)
            .previewLayout(.sizeThatFits)
    }
}
