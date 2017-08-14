class Openimageio
  livecheck :url => "https://github.com/OpenImageIO/oiio/releases",
            :regex => %r{href="/OpenImageIO/oiio/releases/tag/Release-([0-9\.]+)">}
end
