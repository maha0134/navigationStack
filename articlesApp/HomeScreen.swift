//
//  ContentView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct HomeScreen: View {
	@State var path = NavigationPath()
	var body: some View {
			
			NavigationStack(path: $path) {
				NavigationLink(value: 1) {
					Text("Click me to navigate")
				}
				
				.navigationDestination(for: Int.self) { value in
					if value == 1 {
						ChildView()
					}
				}
			}
			
			
			
		.padding()
	}
}

struct HomeScreen_Previews: PreviewProvider {
	static var previews: some View {
		HomeScreen()
	}
}
