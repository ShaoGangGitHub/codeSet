

Pod::Spec.new do |s|

  s.name         = "codeSet"
  s.version      = "0.0.5"
  s.summary      = "codeSet"
  s.description  = "codeSet,label"
  s.homepage     = "https://github.com/ShaoGangGitHub/codeSet"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ShaoGang" => "774031355@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ShaoGangGitHub/codeSet.git", :tag => s.version }
  s.source_files  = "codeSet.h","codeSet.m","UILabel+AutoHeight.h","UILabel+AutoHeight.m","XLPhotoBrowser-1.2.0/**/*.{h,m}"
  s.requires_arc = true
  s.dependency = "SDWebImage", "~> 4.0.0","JSONModel","~> 1.7.0"
end
