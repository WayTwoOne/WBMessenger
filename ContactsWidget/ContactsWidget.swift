//
//  ContactsWidget.swift
//  ContactsWidget
//
//  Created by Vladimir on 20.06.2024.
//

import WidgetKit
import SwiftUI

struct ContactsWidget: Widget {
    let kind: String = "ContactsWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            ContactsWidgetView(entry: entry)
        }
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct ContactsWidget_Previews: PreviewProvider {
    static var previews: some View {
        ContactsWidgetView(entry: SimpleEntry(date: Date(), contact: Contacts.getContacts()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
