//
//  ActorCellView.swift
//  KitCine
//
//  Created by Dylan Caetano on 26/04/2022.
//

import SwiftUI
import Kingfisher

struct ActorCellView: View {
    
    let viewModel: ActorCellViewModel
    
    var body: some View {
        VStack {
            KFImage(viewModel.url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle()) // Mettre la forme arrondit
            Text(viewModel.name)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(viewModel.characterName)
                .font(.caption2)
                .foregroundColor(Color.white.opacity(0.5))
        }
        .fixedSize(horizontal: false, vertical: true) // Quand il y a un text trop grand celui si va sélargird ma cellule.
        .padding(3)
        .foregroundColor(.white)
    }
}

struct ActorCellView_Previews: PreviewProvider {
    
    static let viewModel = ActorCellViewModel(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/bBRlrpJm9XkNSg0YT5LCaxqoFMX.jpg"),
        name: "Tom Holland",
        characterName: "Spider-Man"
    )
    
    static var previews: some View {
        ActorCellView(viewModel: viewModel)
        .frame(width: 120)
        .background(Color.accentColor)
        .previewLayout(.sizeThatFits)
    }
}
