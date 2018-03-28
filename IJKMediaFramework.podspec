Pod::Spec.new do |s|

  s.name         = "IJKMediaFramework"
  s.version      = "0.8.8"
  s.summary      = "Pod IJKMediaFramework."
  s.description  = <<-DESC
                    bilibili/ijkplayer k0.8.4  IJKMediaFramework
                   DESC

  s.homepage     = "https://github.com/silence0201/ijkplayer-iOS"
  s.license      = { :type => "GNU LESSER", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://EXAMPLE/IJKMediaFramework.git", :tag => "#{s.version}" }

  s.source       = { :http => "https://github.com/silence0201/ijkplayer-iOS/blob/0.8.8/IJKMediaFramework.framework.zip" }
  s.vendored_frameworks = 'IJKMediaFramework.framework'

  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "MediaPlayer"
  s.libraries   = "bz2", "z", "stdc++"
end
