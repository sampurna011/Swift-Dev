import Foundation


/*
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
 */

enum Activity {
    case running
    case talking(topic: String)
    case singing(valume: Int)
}

let activity = Activity.talking(topic: "Footbal")


/* strong or weak  may only be applied to class and class-bound protocol types */
enum RoleType: String {
    case regular
    case checked
    case permanent
}

//weak var type: RoleType =  RoleType.checked



/*
 By default, an enum doesn’t come with a raw value. You can add one by adding an inheritance definition, for example, using a String type:
 */

enum OnboardingPage: String {
    case welcome
    case grids
    case rulers
}

print(OnboardingPage.welcome.rawValue)


/* Iterating over all enum cases
   Enums become especially powerful once you use the CaseIterable protocol to iterate over all values
 */

enum OnboardingPage1: String, CaseIterable {
    case welcome
    case grids
    case rulers
    case selectXcode = "Select Xcode"
}

OnboardingPage1.allCases.forEach { onboardingPage in
    print(onboardingPage.rawValue)
}
