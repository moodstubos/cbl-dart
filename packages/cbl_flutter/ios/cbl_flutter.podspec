#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint cbl_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'cbl_flutter'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin to distribute binaries needed by the cbl package.'
  s.homepage         = 'https://github.com/cofu-app/cbl-dart'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Gabiriel Terwesten' => 'gabriel@terwesten.net' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency         'Flutter'
  s.platform         = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version       = '5.0'

  s.vendored_frameworks = "Frameworks/CBLDart.xcframework", "Frameworks/CouchbaseLite.xcframework"
end
