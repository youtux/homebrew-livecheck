class Openimageio
  livecheck do
    url "https://github.com/OpenImageIO/oiio/releases.atom"
    regex(%r{/Release-([0-9\.]+)"})
  end
end
