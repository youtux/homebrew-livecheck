class Ckan
  livecheck do
    url "https://github.com/KSP-CKAN/CKAN/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
