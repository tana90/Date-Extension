//
//  DateExtension.swift
//  Extensions
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//  Created by Tudor Ana on 07/01/21.
//  Copyright © 2021 Tudor Octavian Ana (TANA). All rights reserved.
//

import Foundation

// MARK: - Date

extension Date {
    
    var readable: String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat =  "EEEE\nMMMM dd"
        return formatter.string(from: self as Date).uppercased()
    }
    
    var elapsedSeconds: Int {
        let unitFlags = Set<Calendar.Component>([.second])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    var elapsedMinutes: Int {
        let unitFlags = Set<Calendar.Component>([.minute])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    var elapsedHours: Int {
        let unitFlags = Set<Calendar.Component>([.hour])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    var elapsedDays: Int {
        let unitFlags = Set<Calendar.Component>([.day])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    var elapsedMonths: Int {
        let unitFlags = Set<Calendar.Component>([.month])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    var elapsedYears: Int {
        let unitFlags = Set<Calendar.Component>([.year])
        let components = Calendar.current.dateComponents(unitFlags, from: self, to: Date())
        guard let interval = components.day else { return 0 }
        return interval
    }
    
    static var timestamp: TimeInterval {
        Date().timeIntervalSince1970
    }
}
