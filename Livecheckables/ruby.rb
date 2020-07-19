class Ruby
  livecheck do
    url "https://www.ruby-lang.org/en/downloads/"
    regex(/The current stable version is ([0-9.]+)\./i)
  end
end
