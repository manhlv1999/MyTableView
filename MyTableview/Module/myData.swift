//
//  myData.swift
//  MyTableview
//
//  Created by Le Manh on 8/3/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import Foundation
class MyData {
    class func getList() -> [List] {
        let list = [
            List(image: "icon_1", title: "Client", subtitle: ""),
            List(image: "icon_2", title: "Reception", subtitle: "Today's"),
            List(image: "icon_3", title: "Notification", subtitle: "Unread 2"),
            List(image: "icon_4", title: "Questionnaire", subtitle: ""),
            List(image: "icon_noti", title: "Knowledge base", subtitle: ""),
            List(image: "icon_4", title: "Message", subtitle: ""),
            List(image: "icon_mess", title: "Q $ F", subtitle: "V4.0.2"),
        ]
        return list
    }
}
class MyHeader {
    class func getHeader() -> [Header]{
        let header = [
            Header(name: "Raine", avatarname: "icon_avatar", image: "icon", actions: [HeaderAction(title: "Record", icon: "icon_record"), HeaderAction(title: "Forum", icon: "icon_forum"), HeaderAction(title: "Task", icon: "icon_task"), HeaderAction(title: "Report", icon: "icon_report")] )
        ]
        return header
    }
}
