class Yuicompressor
  livecheck do
    url "https://github.com/yui/yuicompressor/releases/"
    regex(%r{href="/yui/yuicompressor/tree/v([\d.]+)"})
  end
end
