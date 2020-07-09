class Genders
  livecheck do
    url "https://github.com/chaos/genders/releases/latest"
    regex(%r{href=.*?/tag/genders[._-]v?(\d+(?:[.-]\d+)+)["' >]}i)
  end
end
