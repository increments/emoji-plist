#!/usr/bin/env ruby

require 'bundler'
Bundler.require

puts <<HEADER
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<!-- Emot::VERSION="#{Emot::VERSION}" -->
<dict>
HEADER

Emot.list.each do |name, (char, _code)|
  puts "\t<key>#{name}</key>"
  puts "\t<string>#{char}</string>"
end

puts <<FOOTER
</dict>
</plist>
FOOTER
