//
//  TabScreenView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct TabScreenView: View {
	var body: some View {
		TabView {
			HomeScreen()
				.tabItem {
					Image(systemName: "house")
					Text("Home")
				}
			
			GoalsScreen()
				.tabItem {
					Image(systemName: "flag")
					Text("Goals")
				}
			
			SettingsScreen()
				.tabItem {
					Image(systemName: "gear")
					Text("Settings")
				}
		}
	}
}

struct TabScreenView_Previews: PreviewProvider {
	static var previews: some View {
		TabScreenView()
	}
}
