Pod::Spec.new do |s|
    s.name             = "OktaAuthFoundation"
    s.module_name      = "AuthFoundation"
    s.version          = "1.4.3"
    s.summary          = "Okta Authentication Foundation"
    s.description      = <<-DESC
Provides the foundation and common features used to authenticate users, managing the lifecycle and storage of tokens and credentials, and provide a base for other Okta SDKs to build upon.
                         DESC
    s.platforms = {
        :ios     => "9.0",
        :tvos    => "10.0",
        :watchos => "7.0",
        :osx     => "10.11"
    }
    s.ios.deployment_target     = "9.0"
    s.tvos.deployment_target    = "10.0"
    s.watchos.deployment_target = "7.0"
    s.osx.deployment_target     = "10.11"

    s.homepage      = "https://github.com/okta/okta-mobile-swift"
    s.license       = { :type => "APACHE2", :file => "LICENSE" }
    s.authors       = { "Okta Developers" => "developer@okta.com"}
    s.source        = { :git => "https://github.com/okta/okta-mobile-swift.git", :tag => s.version.to_s }
    s.source_files  = "Sources/AuthFoundation/**/*.swift"
    s.resources     = "Sources/AuthFoundation/Resources/*.lproj"
    s.swift_version = "5.5"
end
