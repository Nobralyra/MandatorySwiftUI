//
//  ContentView.swift
//  MandatorySwiftUI
//
//  Created by admin on 28/09/2020.
//

// Make a Photo app with these features:
// 2 Views:
//  A ContentView with 3 buttons: "Picture 1", "Picture 2", "Picture 3"
//  A DetailView which can show one image, almost full-screen.
// 3 images of your own choice, stored in the .xcassets folder.
// When a button is pressed, the corresponding image should be displayed in the DetailView.
// It is OK to use the built-in swipe to return back to ContentView.


import SwiftUI

struct ContentView: View
{    
    @ObservedObject var picturesRepository = PicturesRepository()
    
    var body: some View
    {
        NavigationView
        {
            List (self.picturesRepository.pictureList)
            {
                selectedImage in
                
                // NavigationLink fortæller hvordan man kommer fra A til B.
                // destination: Hvor vil man hen
                // DetailView ønsker at få at vide hvilket billede der ønskes vist, som er imageModel
                NavigationLink( destination: DetailView(selectedImage: selectedImage))
                {
                    // Returnere en text med navnet på det billede man er i gang med at loop igennem
                    // Er en "button" som indeholder tekst
                    Text(selectedImage.imageName)
                }
            }
            .navigationBarTitle(Text("Pictures"))
        }
        .onAppear()
        {
            print("onappear")
            self.picturesRepository.pictureList.append(ImageModel(id: UUID(), imageName: "")) // tilføj
            self.picturesRepository.pictureList.remove(at: self.picturesRepository.pictureList.count-1) // slet
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
