//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 방유빈 on 2023/02/07.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet:Bool
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("ToggleFavorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
