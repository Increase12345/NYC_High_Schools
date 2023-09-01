//
//  HighSchools.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

// I created a model of all components of the School in case we need that in the futuare, but we could do some of them!
struct HighSchool: Identifiable, Codable, Sendable {
    var id: UUID { UUID() }
    
    let dbn: String?
    let school_name: String
    let boro: String?
    let overview_paragraph: String
    let school_10th_seats: String?
    let academicopportunities1: String?
    let academicopportunities2: String?
    let ell_programs: String?
    let neighborhood: String
    let building_code: String?
    let location: String?
    let phone_number: String
    let fax_number: String?
    let school_email: String?
    let website: String
    let subway: String?
    let bus: String?
    let grades2018: String?
    let finalgrades: String
    let total_students: String
    let extracurricular_activities: String?
    let school_sports: String?
    let attendance_rate: String?
    let pct_stu_enough_variety: String?
    let pct_stu_safe: String?
    let school_accessibility_description: String?
    let directions1: String?
    let requirement1_1: String?
    let requirement2_1: String?
    let requirement3_1: String?
    let requirement4_1: String?
    let requirement5_1: String?
    let offer_rate1: String?
    let program1: String?
    let code1: String?
    let interest1: String?
    let method1: String?
    let seats9ge1: String?
    let grade9gefilledflag1: String?
    let grade9geapplicants1: String?
    let seats9swd1: String?
    let grade9swdfilledflag1: String?
    let grade9swdapplicants1: String?
    let seats101: String?
    let admissionspriority11: String?
    let admissionspriority21: String?
    let admissionspriority31: String?
    let grade9geapplicantsperseat1: String?
    let grade9swdapplicantsperseat1: String?
    let primary_address_line_1: String
    let city: String
    let zip: String
    let state_code: String?
    let latitude: String?
    let longitude: String?
    let community_board: String?
    let council_district: String?
    let census_tract: String?
    let bin: String?
    let bbl: String?
    let nta: String?
    let borough: String?
    
    var fullAdress: String {
        "\(primary_address_line_1), \(city), \(zip)"
    }
    
    // This mock data just for the preview but it's not a requared!
    static let MOCK_DATA = HighSchool(dbn: nil,
                                      school_name: "NYC School",
                                      boro: nil,
                                      overview_paragraph: "The mission of Liberation Diploma Plus High School, in partnership with CAMBA, is to develop the student academically, socially, and emotionally. We will equip students with the skills needed to evaluate their options so that they can make informed and appropriate choices and create personal goals for success. Our year-round model (trimesters plus summer school) provides students the opportunity to gain credits and attain required graduation competencies at an accelerated rate. Our partners offer all students career preparation and college exposure. Students have the opportunity to earn college credit(s). In addition to fulfilling New York City graduation requirements, students are required to complete a portfolio to receive a high school diploma.",
                                      school_10th_seats: nil,
                                      academicopportunities1: nil,
                                      academicopportunities2: nil,
                                      ell_programs: nil,
                                      neighborhood: "Downtown",
                                      building_code: nil,
                                      location: nil,
                                      phone_number: "718-946-6812",
                                      fax_number: nil,
                                      school_email: nil,
                                      website: "www.theclintonschool.net",
                                      subway: nil,
                                      bus: nil,
                                      grades2018: nil,
                                      finalgrades: "6-12",
                                      total_students: "612",
                                      extracurricular_activities: nil,
                                      school_sports: nil,
                                      attendance_rate: nil,
                                      pct_stu_enough_variety: nil,
                                      pct_stu_safe: nil,
                                      school_accessibility_description: nil,
                                      directions1: nil, requirement1_1: nil,
                                      requirement2_1: nil,
                                      requirement3_1: nil,
                                      requirement4_1: nil,
                                      requirement5_1: nil,
                                      offer_rate1: nil,
                                      program1: nil,
                                      code1: nil,
                                      interest1: nil,
                                      method1: nil,
                                      seats9ge1: nil,
                                      grade9gefilledflag1: nil,
                                      grade9geapplicants1: nil,
                                      seats9swd1: nil,
                                      grade9swdfilledflag1: nil,
                                      grade9swdapplicants1: nil,
                                      seats101: nil,
                                      admissionspriority11: nil,
                                      admissionspriority21: nil,
                                      admissionspriority31: nil,
                                      grade9geapplicantsperseat1: nil,
                                      grade9swdapplicantsperseat1: nil,
                                      primary_address_line_1: "10 East 15th Street",
                                      city: "NY",
                                      zip: "80018",
                                      state_code: nil,
                                      latitude: nil,
                                      longitude: nil,
                                      community_board: nil,
                                      council_district: nil,
                                      census_tract: nil,
                                      bin: nil,
                                      bbl: nil,
                                      nta: nil,
                                      borough: nil)
}
