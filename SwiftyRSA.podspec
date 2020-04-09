Pod::Spec.new do |s|

  s.name = "SwiftyRSAF"
  s.version = "1.5.2"
  s.summary = "Public key RSA encryption in Swift."

  s.description = <<-DESC
    Encrypt with a RSA public key, decrypt with a RSA private key.
  DESC

  s.homepage = "https://github.com/pableiros/SwiftyRSA"
  s.license = "MIT"
  s.author = { "Pablo Bórquez" => "pablo.borquez@coppel.com" }

  s.source = { :git => "https://github.com/pableiros/SwiftyRSA.git", :tag => s.version }
  s.source_files = "Source/*.{swift,m,h}"
  s.exclude_files = "Source/SwiftyRSA+ObjC.swift"
  s.framework = "Security"
  s.requires_arc = true

  s.swift_version = "5.0"
  s.ios.deployment_target = "8.3"
  s.tvos.deployment_target = "9.2"
  s.watchos.deployment_target = "2.2"

  s.subspec "ObjC" do |sp|
    sp.source_files = "Source/*.{swift,m,h}"
  end
end
