//
//  PicturesRepository.swift
//  MandatorySwiftUI
//
//  Created by admin on 04/10/2020.
//

import Foundation
import SwiftUI

class PicturesRepository: ObservableObject
{
    @Published var pictureList = [
        ImageModel(id: UUID(), imageName: "Picture 1"),
        ImageModel(id: UUID(), imageName: "Picture 2"),
        ImageModel(id: UUID(), imageName: "Picture 3")
    ]
}
