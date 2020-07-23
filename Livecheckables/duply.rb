class Duply
  livecheck do
    url :homepage
    regex(%r{<title><!\[CDATA\[/duply \(simple duplicity\).*?duply_v?(\d+(?:\.\d+)+)\.t}i)
  end
end
