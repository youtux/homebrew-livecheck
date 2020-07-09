class Micronaut
  livecheck do
    url "https://github.com/micronaut-projects/micronaut-core/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
