require "json"
Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
  s.name         = "react-native-xlog"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'sandy105'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/sandy105/react-native-xlog.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/XLogForRN/*.{h,m,mm}","ios/XLogForRN/**/*.{h,m,mm}"
  s.vendored_framework = "libs/mars.framework"
  s.dependency "React-Core"
end
