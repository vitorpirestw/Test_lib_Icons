public func returnIconView(icon: Icon) -> IconView {
    let iconView = IconView()
    iconView.icon = icon

    return iconView

}

public enum Icon: String, CaseIterable {
    case filledProductBrandsproduct = "filled-product-brandsproduct"
    case filledSocialMyprofile = "filled-social-myprofile"
    case filledToggleIndeterminatecheckbox = "filled-toggle-indeterminatecheckbox"
    case outlinedSocialMyprofile = "outlined-social-myprofile"
    case outlinedSocialNetwork = "outlined-social-network"
    case outlinedSocialPerson = "outlined-social-person"

}

public extension Icon {
    var unicode: String {
        switch self {
        case .filledProductBrandsproduct: return "\u{EA2A}"
        case .filledSocialMyprofile: return "\u{EA2B}"
        case .filledToggleIndeterminatecheckbox: return "\u{EA2C}"
        case .outlinedSocialMyprofile: return "\u{EADB}"
        case .outlinedSocialNetwork: return "\u{EADC}"
        case .outlinedSocialPerson: return "\u{EADD}"
        }
    }
}
