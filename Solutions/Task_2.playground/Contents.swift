import Foundation

/*
 Given a valid (IPv4) IP address, return a defanged version of that IP address.
 A defanged IP address replaces every period "." with "[.]".
*/

let address1 = "1.1.1.1"
let address2 = "255.100.50.0"

func defangIPaddr1(_ address: String) -> String {
    // Using the method to replace values
    address.replacingOccurrences(of: ".", with: "[.]")
}

func defangIPaddr2(_ address: String) -> String {
    // Separating numbers and merging with the adding the given separator between each element.
    address.components(separatedBy: ".").joined(separator: "[.]")
}

defangIPaddr1(address1)
defangIPaddr2(address1)
//Input: address = "1.1.1.1"
//Output: "1[.]1[.]1[.]1"

defangIPaddr1(address2)
defangIPaddr2(address2)
//Input: address = "255.100.50.0"
//Output: "255[.]100[.]50[.]0"



