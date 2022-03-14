//
//  YearxAxisFormatter.swift
//  Ribbit
//
//  Created by Rao Mudassar on 05/08/2021.
//

import Charts
import Foundation
class YearxAxisFormatter: NSObject, IAxisValueFormatter {
    let secondsPerDay = 24.0 * 3_600.0
    let dateFormatter = DateFormatter()
      override init() {
        super.init()
        dateFormatter.dateFormat = "yyyy"
      }
      func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let date = Date(timeIntervalSince1970: value)
        return dateFormatter.string(from: date)
    }
}
