

Pod::Spec.new do |s|

  s.name         = "AnimatImageDemo"
  s.version      = "1.0.0"
  s.summary      = "背景动画工具类"

  s.homepage     = "https://github.com/yjbGitHub/AnimatImageDemo"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "universe" => "yjbayt@163.com" }

  s.platform     = :ios, "7.0"

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/yjbGitHub/AnimatImageDemo.git", :tag => s.version }

  s.source_files  = "AnimatImageDemo/AnimatedImagesView.{h,m}"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  s.requires_arc = true

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
