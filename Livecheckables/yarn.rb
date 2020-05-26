class Yarn
  livecheck do
    url "https://yarnpkg.com/en/"
    regex(/Stable:.*?v([0-9\.]+)/m)
  end
end
