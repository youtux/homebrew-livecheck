class Groonga
  livecheck do
    url "https://groonga.org/"
    regex(%r{>([0-9\.]+)</a> is the latest release})
  end
end
