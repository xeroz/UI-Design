//
//  CourseStore.swift
//  DesignCode
//
//  Created by juan on 5/2/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI
import Contentful

let client = Client(spaceId: "dlvncx7165ec", accessToken: "pReO_FYKZ51aBlh3P8iVLAU4eUQAr7L9SErY0emHk2Y")


func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query  = Query.where(contentTypeId: "curso")
    
    client.fetchArray(of: Entry.self, matching: query){ result in
//        print(result)
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case .error(let error):
            print(error)
        }
    }
}


class  CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init(){
        getArray(id: "curso") { (items) in
            items.forEach { (item) in
                items.forEach { (item) in
                    self.courses.append(Course(
                        title: item.fields["title"] as! String,
                        subtitle: item.fields["subtitle"] as! String,
                        image: #imageLiteral(resourceName: "Card4"),
                        logo: #imageLiteral(resourceName: "Logo1"),
                        color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1),
                        show: false))
                }
            }
        }
    }
}
