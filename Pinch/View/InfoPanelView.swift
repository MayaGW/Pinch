//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Maya Ghamloush on 14/02/2024.
//

import SwiftUI

struct InfoPanelView: View {
    //MARK: - PROPERTIES
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        HStack{
            //MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onLongPressGesture(minimumDuration: 1) {
                    print("hello")
                    isInfoPanelVisible.toggle()
                }
            
            Spacer()
            //MARK: - INFO PANEL
            
            HStack(spacing:2){
               Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                Spacer()
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                Spacer()
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                Spacer()
            }//HStack
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
        }//HSTACK
    }
}

 #Preview(traits: .sizeThatFitsLayout) {
    InfoPanelView(scale: 1, offset: .zero)
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
