//
//  ChildView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct ChildView: View {
    var body: some View {
        Text("Child View")
		NavigationLink {
			SecondChildView()
		} label: {
			Text("Click to enter second view")
		}
		.navigationTitle("ChildView")
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
		ChildView()
    }
}
