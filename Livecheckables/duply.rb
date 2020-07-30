class Duply
  livecheck do
    url :homepage
    regex(%r{<title><!\[CDATA\[/duply \(simple duplicity\).*?duply[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
