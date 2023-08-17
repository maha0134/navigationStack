//
//  ChildView.swift
//  articlesApp
//
//  Created by AKSHAY MAHAJAN on 2023-08-15.
//

import SwiftUI

struct ChildView: View {
	let person = Person(name: "Akshay", lastName: "Mahajan")
	var body: some View {
		VStack {
			Text("Child View")
			
			NavigationLink(value: HomeNavigation.secondChild(person)) {
				Text("Click to enter second view")
			}
		}
		.navigationTitle("Child")
	}
}

struct ChildView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationStack {
			ChildView()
		}
	}
}
