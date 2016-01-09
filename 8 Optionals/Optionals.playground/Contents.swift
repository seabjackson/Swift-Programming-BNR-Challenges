// Accessing an optional's value is nil will result in a runtime error. Make this mistake
// by force-unwrapping an optional when it is nil. Examine the error and understand what
// it is telling you

import Cocoa

var errorCodeString: String?
// errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString, errorCodeInteger = Int(theError)
    where errorCodeInteger == 404 {
        errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.")
}

var upCaseErrorDescription = errorDescription?.uppercaseString

// force unwrap an optional that has a value of nil.
errorDescription!
upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN.")
upCaseErrorDescription

let description = errorDescription ?? "No error"
