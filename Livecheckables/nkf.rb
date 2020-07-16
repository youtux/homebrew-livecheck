class Nkf
  livecheck do
    url "https://osdn.net/projects/nkf/releases/"
    regex(%r{=.*?rel/nkf/v?(\d+(?:\.\d+)+[a-z]?)["' >]}i)
  end
end
