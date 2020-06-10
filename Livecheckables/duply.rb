class Duply
  livecheck do
    url :homepage
    regex(%r{<title><!\[CDATA\[/duply \(simple duplicity\).*?duply_([0-9.]+)\.t})
  end
end
