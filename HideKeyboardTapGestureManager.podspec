Pod::Spec.new do |s|
    s.name                  = 'HideKeyboardTapGestureManager'
    s.version               = '1.1.0'
    s.summary               = 'Easy to use, codeless manager to hide keyboard by tapping on views for iOS written in Swift.'
    s.homepage              = 'https://github.com/bonyadmitr/HideKeyboardTapGestureManager'
    s.author                = { 'Bondar Yaroslav' => 'bonyadmitr@gmail.com' }
    s.license               = { :type => "MIT", :file => "LICENSE.md" }
    s.ios.deployment_target = '8.0'
    s.source                = {:git => 'https://github.com/bonyadmitr/HideKeyboardTapGestureManager.git', :tag => "#{s.version}" }
    s.source_files          = 'Source/**/*.swift'
    s.screenshots      		= 'https://github.com/bonyadmitr/HideKeyboardTapGestureManager/blob/develop/Resources/keyboard_icon.png?raw=true',
    						  'https://github.com/bonyadmitr/HideKeyboardTapGestureManager/blob/develop/Resources/preview.png?raw=true'
end