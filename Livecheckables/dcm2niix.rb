class Dcm2niix
  livecheck do
    url "https://github.com/rordenlab/dcm2niix/releases"
    regex(%r{href="/rordenlab/dcm2niix/tree/v([0-9\.]+)"})
  end
end
