class Yarn
  livecheck do
    url "https://yarnpkg.com/en/"
    regex(/Stable:.*?v?(\d+(?:\.\d+)+)/im)
  end
end
