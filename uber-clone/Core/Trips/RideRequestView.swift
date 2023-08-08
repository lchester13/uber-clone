//
//  RideRequestView.swift
//  uber-clone
//
//  Created by Leanna Chester on 8/7/23.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack{
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
            
            // trip info view
            HStack{
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8, height: 8)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 8, height: 8)
                }
                
                VStack(alignment: .leading, spacing: 24 ){
                    HStack {
                        Text("Current Location")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray)
                        Spacer()
                        Text("1:38 PM")
                            .font(.system(size: 14, weight:
                                    .semibold))
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 10)
                    
                    HStack {
                        Text("Starbucks Coffee")
                            .font(.system(size: 16, weight: .semibold))
                            
                        Spacer()
                        Text("1:45 PM")
                            .font(.system(size: 14, weight:
                                    .semibold))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.leading, 8)
            }
            .padding()
            
            Divider()
            
            
            // ride type selection view
            
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(0 ..< 3, id: \.self) { _ in
                        VStack(alignment: .leading) {
                            Image(systemName: "uber-x")
                        }
                    }
                }
            }
            
            //payment option view
            
            // request ride button
        }
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
