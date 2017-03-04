//
//  PathGroup.swift
//
//  Created by ToKoRo on 2017-03-04.
//

import UIKit

class PathGroup {
    let identifier: String
    var paths: [Path] = []

    init() {
        self.identifier = UUID().uuidString
    }

    func addPath(_ path: Path) {
        paths.append(path)
    }

    func contains(path: Path) -> Bool {
        return paths.last?.identifier == path.identifier
    }

    func isNear(by targetPath: Path) -> Bool {
        for path in paths {
            if path.isNear(by: targetPath) {
                return true
            }
        }
        return false
    }
}

// MARK: - Drawable

extension PathGroup: Drawable {
    func draw() {
        for path in paths {
            path.draw()
        }
    }
}
