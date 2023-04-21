//
//  Universities.swift
//  Telu_UniversityApp
//
//  Created by Telu,Venkata Sravan on 4/16/23.
//

import Foundation

struct Universites{
    var domain : String?
    var list_Array : [UniversityList]?
    
//    init(domain:String,list_Array:UniversityList) {
//        self.domain = domain
//        self.list_Array = list_Array
//    }
}

struct UniversityList{
    var collegeName:String?
    var collegeImage :String?
    var collegeInfo:String?
    
    init(collegeName:String,collegeImage:String,collegeInfo:String) {
        self.collegeName =  collegeName
        self.collegeImage = collegeImage
        self.collegeInfo = collegeInfo
    }
}

// domain - Computer Science, IT, Data Science, Cyber Security
/*
 Computer Science - Northwest State University, University of Central Missouri, University of Missouri Kansas City, University of North Texas, Georgia State University
 IT - University of Georgia, Arizona State University, Northeastern University, Purdue University, New Jersey Institute of Technology
 Data Science - George mason university, University of California(Berkeley), Carnegie Mellon University, Georgia Institute of Technology, Cornell University
 Cyber Security - Massachusetts Institute of Technology, University of Maryland(College Park), California Institute of Technology, University of Washington, University of California(San Diego)
 */

// Domain 1 - Computer Science

let domain1 = Universites(domain: "Computer Science", list_Array: [
    UniversityList(collegeName: "Northwest Missouri State University", collegeImage: "northwest", collegeInfo: "Northwest Missouri State University is a public university in Maryville, Missouri. It has an enrollment of about 8,505 students."),
    UniversityList(collegeName: "University of Central Missouri", collegeImage: "ucm", collegeInfo: "The University of Central Missouri is a public university in Warrensburg, Missouri. In 2019, enrollment was 11,229 students from 49 states and 59 countries on its 1,561-acre campus."),
    UniversityList(collegeName: "University of Missouri Kansas City", collegeImage: "umkc", collegeInfo: "The University of Missouri–Kansas City is a public research university in Kansas City, Missouri. UMKC is part of the University of Missouri System and one of only two member universities with a medical school."),
    UniversityList(collegeName: "University of North Texas", collegeImage: "unt", collegeInfo: "The University of North Texas is a public research university in Denton, Texas. It was founded as a nonsectarian, coeducational, private teachers college in 1890."),
    UniversityList(collegeName: "Georgia State University", collegeImage: "gsu", collegeInfo: "Georgia State University is a public research university in Atlanta, Georgia. Founded in 1913, it is one of the University System of Georgia's four research universities.")
])


// Domain 2 - IT
let domain2 = Universites(domain: "IT", list_Array: [
    UniversityList(collegeName: "University of Georgia", collegeImage: "uga", collegeInfo: "The University of Georgia is a public land-grant research university with its main campus in Athens, Georgia. "),
    UniversityList(collegeName: "Arizona State University", collegeImage: "asu", collegeInfo: "Arizona State University is a public institution that was founded in 1885. It has a total undergraduate enrollment of 64,716 (fall 2021), its setting is urban, and the campus size is 1,989 acres."),
    UniversityList(collegeName: "Northeastern University", collegeImage: "neu", collegeInfo: "Northeastern University is a private research university with its main campus in Boston. Established in 1898, the university offers undergraduate and graduate programs on its main campus."),
    UniversityList(collegeName: "Purdue University", collegeImage: "purdue", collegeInfo: "Purdue University is a public land-grant research university in West Lafayette, Indiana, and the flagship campus of the Purdue University system. "),
    UniversityList(collegeName: "New Jersey Institute of Technology", collegeImage: "njit", collegeInfo: "New Jersey Institute of Technology is a public research university in Newark, New Jersey with a graduate-degree-granting satellite campus in Jersey City.")
])

// Domain 3 - Data Science
let domain3 = Universites(domain: "Data Science", list_Array: [
    UniversityList(collegeName: "George mason university", collegeImage: "gmu", collegeInfo: "George Mason University is a public research university in Fairfax County, Virginia, with an independent City of Fairfax postal address in the Washington metropolitan area. "),
    UniversityList(collegeName: "The University of California, Berkeley ", collegeImage: "ucber", collegeInfo: "The University of California, Berkeley is a public land-grant research university in Berkeley, California. Established in 1868 as the University of California, it is the state's first land-grant university and the founding campus of the University of California system"),
    UniversityList(collegeName: "Carnegie Mellon University", collegeImage: "cmu", collegeInfo: "Carnegie Mellon University is a private research university in Pittsburgh, Pennsylvania. The institution was originally established in 1900 by Andrew Carnegie as the Carnegie Technical Schools."),
    UniversityList(collegeName: "Georgia Institute of Technology", collegeImage: "gt", collegeInfo: "The Georgia Institute of Technology, commonly referred to as Georgia Tech or, in the state of Georgia, as Tech or The Institute, is a public research university and institute of technology in Atlanta, Georgia."),
    UniversityList(collegeName: "Cornell University", collegeImage: "cornell", collegeInfo: "The Georgia Institute of Technology, commonly referred to as Georgia Tech or, in the state of Georgia, as Tech or The Institute, is a public research university and institute of technology in Atlanta, Georgia.")
])

// Domain 4 - Cyber Security
let domain4 = Universites(domain: "Cyber Security", list_Array: [
    UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit", collegeInfo: "The Massachusetts Institute of Technology is a private land-grant research university in Cambridge, Massachusetts. Established in 1861, MIT has played a significant role in the development of many areas of modern technology and science."),
    UniversityList(collegeName: "University of Maryland, College Park", collegeImage: "umcp", collegeInfo: "The University of Maryland, College Park (University of Maryland, UMD, or simply Maryland) is a public land-grant research university in College Park, Maryland. Founded in 1856, UMD is the flagship institution of the University System of Maryland"),
    UniversityList(collegeName: "California Institute of Technology", collegeImage: "caltech", collegeInfo: "The California Institute of Technology is a private research university in Pasadena, California. The university is responsible for many modern scientific advancements."),
    UniversityList(collegeName: "University of Washington", collegeImage: "uw", collegeInfo: "The University of Washington is a public research university in Seattle, Washington. Founded in 1861, Washington is one of the oldest universities on the West Coast."),
    UniversityList(collegeName: "University of California, San Diego", collegeImage: "ucsan", collegeInfo: "The University of California, San Diego (UC San Diego or colloquially, UCSD) is a public land-grant research university in La Jolla, California.")
])

// Appending the objects to Universities_List
let Universities_List = [domain1,domain2,domain3,domain4]




