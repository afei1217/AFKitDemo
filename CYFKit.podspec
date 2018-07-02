#
#  Be sure to run `pod spec lint HUPhotoBrowser.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# 因为有重名的 不得不改名
  s.name         = "CYFKit"
  s.version      = "0.0.1"
  s.summary      = "Base component"
  s.description  = <<-DESC
                        这是一个私人基础库 包含常用宏定义、常用分类、常用功能组件
                    DESC
  s.homepage     = "https://github.com/chenyongfei/AFKitDemo"

  s.license      = "MIT"

  s.author             = { "afei" => "2511433510@qq.com" }

  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/chenyongfei/AFKitDemo.git", :tag => "0.0.1" }
  s.source_files  = "AFKitDemo", "AFKitDemo/AFKit/**/*.{h,m}"
  s.framework  = "UIKit"


  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
