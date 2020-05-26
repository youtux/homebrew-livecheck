class Scalariform
  livecheck do
    url "https://github.com/scala-ide/scalariform/releases"
    regex(%r{href="/scala-ide/scalariform/tree/v?([0-9\.]+)})
  end
end
