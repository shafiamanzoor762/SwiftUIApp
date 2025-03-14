//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by apple on 19/10/2024.
//

import SwiftUI
struct Data:Identifiable{
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate:Date
}
struct ContentView: View {
    var items = [Data]()
    var body: some View {
        Home()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.BG)
            .preferredColorScheme(.light)
            
//        NavigationView {
//            List(items){data in
//                NavigationLink(destination: DataView(data: data)){
//                    HStack{
//                        Image(data.imageName)
//                            .resizable().frame(width: 100.0, height:100.0, alignment: .center)
//                            .cornerRadius(10)
//                        Text(data.title)
//                            .foregroundColor(.primary)
//                            .fontWeight(.bold)
//                        
//                    }
//                }
//            }.navigationBarTitle("Photos")
//        }
    }
}

////MARK: Section 2
//struct DataView: View {
//    var data: Data
//    let dateFormatter = DateFormatter()
//    var body: some View{
//        VStack{
//            Image(data.imageName)
//                .resizable().frame(width:330, height: 300, alignment: .center)
//                .aspectRatio(contentMode: .fit)
//            Text(data.imageDescription)
//                .font(.largeTitle)
//                .padding(5)
//            
//            Spacer()
//            
//            Text(dateFormatter.string(from:data.imageTakenDate))
//                .padding(5)
//        }
//        .navigationBarTitle(data.title)
//    }
//}

#Preview {
    ContentView(
//        items: [
//            Data(title: "Beach 1", imageName: "beach1", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 2", imageName: "beach2", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 3", imageName: "beach3", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 1", imageName: "beach1", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 2", imageName: "beach2", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 3", imageName: "beach3", imageDescription: "This is a beach", imageTakenDate: Date.now),
//            Data(title: "Beach 1", imageName: "beach1", imageDescription: "This is a beach", imageTakenDate: Date.now)
//        ]
    )
//    .environment(\.colorScheme, .dark)
}
