class Jruby
  livecheck do
    url "http://jruby.org/download"
    regex(%r{href=.*?/jruby-dist-([0-9.]+)-bin\.t}i)
  end
end
