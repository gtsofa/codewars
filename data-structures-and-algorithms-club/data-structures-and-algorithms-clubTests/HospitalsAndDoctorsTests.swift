//
//  HospitalsAndDoctorsTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 17/09/2024.
//

import XCTest

struct HospitalsAndDoctors {
    func doctorInHospital(_ rosterArray: [[Int]]) -> Int {
        var doctorHospitalRatio: [Int: Set<Int>] = [:]
        
        let totalHospitals = rosterArray.count
        let totalDoctorDays = rosterArray[0].count
        
        
        for hospital in 0..<totalHospitals {
            for day in 0..<totalDoctorDays {
                let doctor = rosterArray[hospital][day]
                
                if doctorHospitalRatio[doctor] == nil {
                    doctorHospitalRatio[doctor] = Set<Int>()
                }
                
                doctorHospitalRatio[doctor]?.insert(hospital)
            }
        }
        
        var hospitalCount = 0
        
        for (_, hospitals) in doctorHospitalRatio {
            if hospitals.count > 1 {
                hospitalCount += 1
            }
        }
        return hospitalCount
    }
}

final class HospitalsAndDoctorsTests: XCTestCase {
    func test_doctorInHospital_returnsCorrectNumberOfDoctorInHospital() {
        let sut = HospitalsAndDoctors()
        
        let case0 = sut.doctorInHospital([[1, 2, 2], [3, 1, 4]])
        
        XCTAssertEqual(case0, 1)
    }

}
