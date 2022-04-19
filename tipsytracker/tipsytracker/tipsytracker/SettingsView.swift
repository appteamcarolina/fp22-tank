//
//  SettingsView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        //NavigationView {
            Form {
                Section(header: Text("Display"), footer: Text("System settings will override Dark Mode and use the current device theme")) {
                    
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Dark Mode")
                    })
                    
                    Toggle(isOn: .constant(true), label: {
                        Text("Use System Settings")
                    })
                }
            }
            .navigationTitle("Settings")
        }
    }
//}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
