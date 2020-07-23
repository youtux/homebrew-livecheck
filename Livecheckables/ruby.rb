class Ruby
  livecheck do
    url "https://www.ruby-lang.org/en/downloads/"
    regex(/The current stable version is v?(\d+(?:\.\d+)+)\./i)
  end
end
