//
//  FireFire.swift
//  ExamQ
//
//  Created by Ted on 4/29/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import Foundation
import Firebase

class FireFire {
    let myFirebaseRef = Firebase(url: "https://bookstoreexam.firebaseio.com/")

    init() {
    myFirebaseRef.setValue  (
    ["books0": [
    "creatAt": "0",
    "title": "在 101 上Hello World!",
    "picture": "",
    "address": "110 台北市101",
    "phone": "999-333-222",
    "website": "http://taipei101.com",
    "bookreview": "this is the book telling you how to upload your profile picture of you on Taipei 101 to your firebase account of which doesn't provide a decent example for coders that are new to swift and are struggling to finish their final exam within three hours"
    
    ],
    "books1": [
    "creatAt": "1",
    "title": "在 202 上Kiss the World!",
    "picture": "",
    "address": "220 台北市202",
    "phone": "333-666-111",
    "website": "http://taipei202.com",
    "bookreview": "2nd edition of the book telling you how to upload your profile picture of you on Taipei 101 to your firebase account of which doesn't provide a decent example for coders that are new to swift and are struggling to finish their final exam within three hours"
    
    ],
    "books2": [
    "creatAt": "2",
    "title": "在 303 上Say Hello!",
    "picture": "",
    "address": "330 台北市303",
    "phone": "55667788",
    "website": "http://taipei303.com",
    "bookreview": "3rd edition of the book telling you how to upload your profile picture of you on Taipei 101 to your firebase account of which doesn't provide a decent example for coders that are new to swift and are struggling to finish their final exam within three hours"
    
    ],
    "books3":  [
    "creatAt": "3",
    "title": "在 404 上Build my Code!",
    "picture": "",
    "address": "440 台北市404",
    "phone": "886773525",
    "website": "http://taipei404.com",
    "bookreview": "4th time of the book telling you how to upload your profile picture of you on Taipei 101 to your firebase account of which doesn't provide a decent example for coders that are new to swift and are struggling to finish their final exam within three hours"
    
    ],
    "books4": [
    "creatAt": "4",
    "title": "在 505 上View Did Load!",
    "picture": "",
    "address": "550 台北市505",
    "phone": "54321",
    "website": "http://taipei505.com",
    "bookreview": "5th time of the book telling you how to upload your profile picture of you on Taipei 101 to your firebase account of which doesn't provide a decent example for coders that are new to swift and are struggling to finish their final exam within three hours"
    
    ]
    ]);
    }
}
