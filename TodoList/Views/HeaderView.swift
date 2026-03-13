//
//  HeaderView.swift
//  TodoList
//
//  Created by Rahul Acharya on 13/03/26.
//  Copyright © 2026 Swift Examples. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.pink)
            /// rotation effect use for rotate view using Angle of degrees
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To do List")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 30)
        }
        .frame(height: 300)
//            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        /// use containerRelativeFrame instead of UIScreen because of it's decrepeted in future version
        .containerRelativeFrame(.horizontal, { length, _ in
            length * 3
        })
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
