Pod::Spec.new do |s|
  s.name         = 'YYCache'
  s.summary      = 'High performance cache framework for iOS.'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYCache'
  s.platforms     = {
    :ios => '6.0',
    :watchos => '2.0',
    :tvos => '10.0'
  }
  s.ios.deployment_target = '6.0'
  s.source       = { :git => 'https://github.com/ibireme/YYCache.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYCache/*.{h,m}'
  s.public_header_files = 'YYCache/*.{h}'
  
  s.libraries = 'sqlite3'
  s.ios.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore' 
  s.watchos.frameworks = 'UIKit', 'CoreFoundation'
  s.tvos.frameworks = 'UIKit', 'CoreFoundation'
end
