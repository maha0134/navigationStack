//
//  SecondChildView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-17.
//

import SwiftUI

struct SecondChildView: View {
    var body: some View {
		VStack(spacing: 10) {
        	Text("Welcome to")
			Text("Second child view")
				.fontWeight(.bold)
			Text("of the Home View")
        }
			.navigationTitle("Second Child View")
    }
}

struct SecondChildView_Previews: PreviewProvider {
    static var previews: some View {
        SecondChildView()
    }
}
