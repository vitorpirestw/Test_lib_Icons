import XCTest

@testable import Test_lib_Icons

class IconTests: XCTestCase {
    func test_difference_between_icons_and_test_mirror() {
        let difference = diffBetweenIcons(
            appIcons: Icon.allCases,
            testIcons: IconMirror.allCases
        )

        XCTAssertEqual(difference.count, 0)
    }

    func test_difference_between_icons_and_test_mirror_raw_value() {
        let iconsMirror = Icon.allCases.compactMap { IconMirror(rawValue: $0.rawValue) }

        XCTAssertEqual(iconsMirror.count, Icon.allCases.count)
    }
}

extension IconTests {

    /**
     This enum only exist becuase Icon.swift is generate by an external tool.
     To be able to update snapshot tests, this file is need to compare diference between updates.
     Example: deleted Icons or renamed Icons
    */

    private enum IconMirror: String, CaseIterable {
        case filledProductBrandsproduct = "filled-product-brandsproduct"
        case filledSocialMyprofile = "filled-social-myprofile"
        case filledToggleIndeterminatecheckbox = "filled-toggle-indeterminatecheckbox"
        case outlinedSocialMyprofile = "outlined-social-myprofile"
        case outlinedSocialNetwork = "outlined-social-network"
        case outlinedSocialPerson = "outlined-social-person"


    }

    private func diffBetweenIcons(appIcons: [Icon], testIcons: [IconMirror]) -> [String] {
        let appIcons = appIcons.map { "\($0)" }
        let testIcons = testIcons.map { "\($0)" }

        let thisSet = Set(appIcons)
        let otherSet = Set(testIcons)

        return Array(thisSet.symmetricDifference(otherSet))
    }
}
