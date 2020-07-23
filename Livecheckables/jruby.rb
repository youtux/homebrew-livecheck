class Jruby
  livecheck do
    url "http://jruby.org/download"
    regex(%r{href=.*?/jruby-dist-v?(\d+(?:\.\d+)+)-bin\.t}i)
  end
end
