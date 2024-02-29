#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint zoom.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'gr_zoom'
  s.version          = '0.0.2'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/25LucasAnselmo/gr_zoom'
  s.screenshots = 'https://admhomolapp.com21.com.br/frontend/public/images/logo-principal-pt-br.png', 'https://www.groupsoftware.com.br/wp-content/themes/site-2020/images/marca-group.svg'
  s.social_media_url = 'https://www.facebook.com/groupsoftware'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Com21 Software' => 'lucasmartins.m.25@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-framework MobileRTC', 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386, arm64' }
  s.swift_version = '5.0'
  
  s.preserve_paths = 'MobileRTC.xcframework', 'MobileRTCResources.bundle'
  s.vendored_frameworks = 'MobileRTC.xcframework'
  s.resource = 'MobileRTCResources.bundle'
end
