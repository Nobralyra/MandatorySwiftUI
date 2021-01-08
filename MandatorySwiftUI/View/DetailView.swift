//
//  DetailView.swift
//  MandatorySwiftUI
//
//  Created by admin on 28/09/2020.
//

import SwiftUI

struct DetailView: View
{
    let selectedImage: ImageModel
    
    var body: some View
    {
        Image(selectedImage.imageName)
            .navigationBarTitle("", displayMode: .inline)
            
    }
}

#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedImage: ImageModel(id: UUID(), imageName: "Picture 1" ))
    }
}
#endif
