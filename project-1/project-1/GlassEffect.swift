//
//  GlassEffect.swift
//  project-1
//
//  Created by rutik maraskolhe on 09/07/21.
//

import SwiftUI
import SwiftUIX

struct GlassEffect: View {
    var body: some View {
      
        ZStack{
            
            Image("2")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack{
                    GlassEffectCardView(title: "Cretus-iosDev", subtitle: "Cretus-iosDev", faculty: "Cretus-iosDev")
                    GlassEffectCardView(title: "Cretus-iosDev", subtitle: "Cretus-iosDev", faculty: "Cretus-iosDev")
                    GlassEffectCardView(title: "Cretus-iosDev", subtitle: "Cretus-iosDev", faculty: "Cretus-iosDev")
                }
            }
            }
        GlassEffectCardView(title: "Cretus-iosDev", subtitle: "Cretus-iosDev", faculty: "Cretus-iosDev")
    }
}

struct GlassEffect_Previews: PreviewProvider {
    static var previews: some View {
        GlassEffect()
    }
}


struct  GlassEffectCardView: View {
    var title :  String = "Cretus-iosDev"
    var subtitle :  String = "Cretus-iosDev"
    var faculty :  String = "Cretus-iosDev"
    var body: some View {
        
        VisualEffectBlurView(blurStyle: .light, content: {
                VStack(alignment: .leading, spacing: 8) {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text(subtitle)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white.opacity(0.5))
                    Text(faculty)
                        .font(.caption)
                        .foregroundColor(Color.white.opacity(0.3))
                }
                .padding()
            })
            .frame(width: 320, height: 300)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.5), radius: 30, x: 0, y: 15)
            .padding()
        }
    }

