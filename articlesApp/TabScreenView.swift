//
//  TabScreenView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct TabScreenView: View {
	@State private var selectedTab: Tab = .home
	
	enum Tab {
		case home, goals, settings
	}
	
	enum HomeNavigation {
		case child, secondChild
	}
	@State private var homeNavigationStack: [HomeNavigation] = []
	//likewise you declare navigationStacks for each of the tabs
	var body: some View {
		
		TabView(selection: tabSelection()) {
			
			HomeScreen()
				.tabItem {
					Label("Home", systemImage: "house")
				}
				.tag("Home")
			
			GoalsScreen()
				.tabItem {
					Label("Goals", systemImage: "flag")
				}
				.tag("Goals")
			
			SettingsScreen()
				.tabItem {
					Label("Settings", systemImage: "gear")
				}
				.tag("Settings")
		}
	}
}

extension TabScreenView {
	
	private func tabSelection() -> Binding<Tab> {
		Binding { //this is the get block
			self.selectedTab
		} set: { tappedTab in
			if tappedTab == self.selectedTab {
				//User tapped on the tab twice == Pop to root view
			}
			//Set the tab to the tabbed tab
			self.selectedTab = tappedTab
		}
	}
}



struct TabScreenView_Previews: PreviewProvider {
	static var previews: some View {
		TabScreenView()
	}
}
