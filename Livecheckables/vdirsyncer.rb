class Vdirsyncer
  livecheck do
    url "https://github.com/pimutils/vdirsyncer/releases"
    regex(%r{href=".*?/tag/([0-9.]+)"})
  end
end
