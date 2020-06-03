class Ott
  livecheck do
    url "https://github.com/ott-lang/ott/releases"
    regex(%r{href="/ott-lang/ott/tree/([0-9.]+)})
  end
end
