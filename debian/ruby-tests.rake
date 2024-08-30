require 'gem2deb/rake/spectask'

# Upstream recommended to disable running the test suite, and everytime we try
# to run it again, sooner or later we get FTBFS bugs due to random failures.
# Instead of running the upstream test suite, let's run just some very basic
# smoke tests of our own.
#
# Links:
# https://github.com/grosser/parallel/issues/227
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=905648
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1019646
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1017218
Gem2Deb::Rake::RSpecTask.new do |spec|
  spec.pattern = 'debian/tests/*_spec.rb'
end
