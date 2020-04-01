require 'json'
package = JSON.parse(File.read(File.join(__dir__, './', 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.requires_arc  = true
  s.author        = package['author']
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/hwde/react-native-fyber', :branch => "fyber8.21.0" }
  s.platform      = :ios, '7.0'
  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  s.dependency      'React'

  s.subspec 'Fyber' do |ss|
    ss.dependency     'FyberSDK', '~> 9.1.1'
    ss.source_files = 'ios/RNFyber/*.{h,m}'

  end
end
