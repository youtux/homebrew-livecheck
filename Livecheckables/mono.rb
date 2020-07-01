class Mono
  livecheck do
    url "https://www.mono-project.com/download/stable/"
    regex(/href=.*?(\d+(?:\.\d+)+)\.macos/i)
  end
end
