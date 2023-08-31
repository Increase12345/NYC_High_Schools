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
    let overview_paragraph: String?
    let school_10th_seats: String?
    let academicopportunities1: String?
    let academicopportunities2: String?
    let ell_programs: String?
    let neighborhood: String
    let building_code: String?
    let location: String?
    let phone_number: String?
    let fax_number: String?
    let school_email: String?
    let website: String?
    let subway: String?
    let bus: String?
    let grades2018: String?
    let finalgrades: String?
    let total_students: String?
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
    let primary_address_line_1: String?
    let city: String?
    let zip: String?
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
    
    // This mock data just for the preview but it's not a requared!
    static let MOCK_DATA = HighSchool(dbn: nil, school_name: "NYC School", boro: nil, overview_paragraph: nil, school_10th_seats: nil, academicopportunities1: nil, academicopportunities2: nil, ell_programs: nil, neighborhood: "Downtown", building_code: nil, location: nil, phone_number: nil, fax_number: nil, school_email: nil, website: nil, subway: nil, bus: nil, grades2018: nil, finalgrades: nil, total_students: nil, extracurricular_activities: nil, school_sports: nil, attendance_rate: nil, pct_stu_enough_variety: nil, pct_stu_safe: nil, school_accessibility_description: nil, directions1: nil, requirement1_1: nil, requirement2_1: nil, requirement3_1: nil, requirement4_1: nil, requirement5_1: nil, offer_rate1: nil, program1: nil, code1: nil, interest1: nil, method1: nil, seats9ge1: nil, grade9gefilledflag1: nil, grade9geapplicants1: nil, seats9swd1: nil, grade9swdfilledflag1: nil, grade9swdapplicants1: nil, seats101: nil, admissionspriority11: nil, admissionspriority21: nil, admissionspriority31: nil, grade9geapplicantsperseat1: nil, grade9swdapplicantsperseat1: nil, primary_address_line_1: nil, city: nil, zip: nil, state_code: nil, latitude: nil, longitude: nil, community_board: nil, council_district: nil, census_tract: nil, bin: nil, bbl: nil, nta: nil, borough: nil)
}
