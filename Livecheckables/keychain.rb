class Keychain
  livecheck do
    url "https://github.com/funtoo/keychain/releases"
    regex(%r{href="/funtoo/keychain/tree/([0-9\.]+)})
  end
end
