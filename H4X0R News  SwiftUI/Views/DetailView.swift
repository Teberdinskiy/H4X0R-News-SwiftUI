//
//  DetailView.swift
//  H4X0R News  SwiftUI
//
//  Created by 🧔🏻Alikhan Batchaev on 23.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
