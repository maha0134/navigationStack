//
//  ContentView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct HomeScreen: View {
	@Binding var path: [HomeNavigation]
	
	var body: some View {
		
		NavigationStack(path: $path) {
			NavigationLink(value: HomeNavigation.child) {
				Text("Click me to navigate")
			}
			
			.navigationDestination(for: HomeNavigation.self) { screen in
				switch screen {
					case .child: ChildView()
					case .secondChild(let person): SecondChildView(person: person)
				}
			}
			.navigationTitle("Home")
		}
		
		.padding()
	}
}

struct HomeScreen_Previews: PreviewProvider {
	static var previews: some View {
		HomeScreen(path: .constant([HomeNavigation]()))
	}
}
