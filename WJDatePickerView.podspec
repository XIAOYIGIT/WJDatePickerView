Pod::Spec.new do |s|
  s.name         = "WJDatePickerView"
  s.version      = "0.0.1"
  s.summary      = "date"
# s.description  = <<-DESC
#                      this project provide all kinds of categories for iOS developer 
#                   DESC
  s.homepage     = "https://github.com/XIAOYIGIT/WJDatePickerView"
  s.license      = {:type => "MIT", :file => "LICENSE"}
  s.author             = { "XIAOYIGIT" => "756514838@qq.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/XIAOYIGIT/WJDatePickerView.git", :tag => "0.0.1"}
  s.source_files  = "WJDatePickerView"
  s.exclude_files = "Classes/Exclude"
# s.resource  = "icon.png"
# s.framework  = "SomeFramework"
  s.requires_arc = true
end
