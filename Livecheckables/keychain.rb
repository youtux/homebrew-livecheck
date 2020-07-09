class Keychain
  livecheck do
    url "https://github.com/funtoo/keychain/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
