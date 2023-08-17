//
//  TabScreenView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

enum Tab {
	case home, goals, settings
}

enum HomeNavigation: Hashable {
	case child, secondChild(Person)
}

struct TabScreenView: View {
	
	@State private var selectedTab: Tab = .home
	
	@State private var homeNavigationStack: [HomeNavigation] = []
	//likewise you declare navigationStacks for each of the tabs
	var body: some View {
		
		TabView(selection: tabSelection()) {
			
			HomeScreen(path: $homeNavigationStack)
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
				if homeNavigationStack.isEmpty {
					//User already on home view, scroll to top
				} else {
					homeNavigationStack = []
				}
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
