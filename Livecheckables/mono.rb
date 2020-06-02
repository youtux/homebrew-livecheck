class Mono
  livecheck do
    url "https://download.mono-project.com/sources/mono/"
    regex(/mono-([0-9,.]+)\./)
  end
end
