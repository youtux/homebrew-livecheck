class Elektra
  livecheck do
    url "https://github.com/ElektraInitiative/libelektra/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
