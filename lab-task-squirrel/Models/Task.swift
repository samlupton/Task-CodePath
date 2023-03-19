//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite OKC coffee shop ",
                 description: "This is where you work on your iOS assignment!"),
            Task(title: "Find a dog",
                 description: "Look in a dog park."),
            Task(title: "Find a candle",
                 description: "There are some craft shops near OKC.")
            ]
    }
}
