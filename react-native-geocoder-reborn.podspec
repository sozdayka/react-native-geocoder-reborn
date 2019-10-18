require 'json'
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|

  s.name           = package["name"]
  s.version        = package["version"]
  s.summary        = package['description']
  s.author         = { "Tim Wang" => "i@timwang.me" }
  s.license        = package["license"]
  s.homepage       = package["homepage"]
  s.platform       = :ios, "8.0"
  s.source         = { :git => "https://github.com/timwangdev/react-native-geocoder-reborn.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/RNGeocoder/*.{h,m}'
  s.preserve_paths = "**/*.js"
  s.dependency 'React'
  s.dependency 'React-Core'
  s.dependency 'React-Core/DevSupport'
  s.dependency 'React-Core/RCTWebSocket'
  s.dependency 'React-RCTActionSheet'
  s.dependency 'React-RCTBlob'
  s.dependency 'React-RCTLinking'
  s.dependency 'React-RCTNetwork'
  s.dependency 'React-RCTSettings'
  s.dependency 'React-RCTText'
  s.dependency 'React-RCTVibration'

  s.dependency 'React-cxxreact'
  s.dependency 'React-jsi'
  s.dependency 'React-jsiexecutor'
  s.dependency 'React-jsinspector'
  s.dependency 'Yoga'

  s.dependency 'DoubleConversion'
  s.dependency 'glog'
  s.dependency 'Folly'
end
