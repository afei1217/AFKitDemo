
Pod::Spec.new do |s|

# 因为有重名的 不得不改名
    s.name         = "CYFKit"
    s.version      = "0.0.1"
    s.summary      = "iOS开发基础组件库"
    s.description  = <<-DESC
                        这是一个私人基础库 包含常用宏定义、常用分类、常用功能组件
                        DESC
    s.homepage     = "https://github.com/chenyongfei/AFKitDemo"
    s.license      = "MIT"
    s.author       = { "afei" => "2511433510@qq.com" }
    s.platform     = :ios, "8.0"

    s.source       = { :git => "https://github.com/chenyongfei/AFKitDemo.git", :tag => "0.0.1" }

    s.public_header_files = "AFKit/AFKit.h"
    s.source_files = "CYFKit/AFKit.h"

    # 通用分类
    s.subspec 'AFCategories' do |categories|
        categories.public_header_files = "CYFKit/AFCategories/AFCategories.h"
        categories.source_files = "CYFKit/AFCategories/AFCategories.h"

        # UIKit
        categories.subspec 'UIKit' do |uikit|
            uikit.public_header_files = 'CYFKit/AFCategories/UIKit/UIKit+AFCategories.h'
            uikit.source_files = 'CYFKit/AFCategories/UIKit/UIKit+AFCategories.h'

            # UIView
            uikit.subspec 'UIView' do |ss|
                ss.source_files = "CYFKit/AFCategories/UIKit/UIView/*.{h,m}"
            end
        end
    end




    s.framework  = "UIKit"
    s.requires_arc = true
end
