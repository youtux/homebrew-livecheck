class Genders
  livecheck do
    url "https://github.com/chaos/genders/releases/latest"
    regex(%r{href=.*?/tag/genders-(\d+(?:-\d+)+)["']}i)
  end
end
