//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Shreshth Arora on 09/04/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                 NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                     LandmarkRow(landmark: landmark)
                 }
             }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone 9"))
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        }
    }
}
