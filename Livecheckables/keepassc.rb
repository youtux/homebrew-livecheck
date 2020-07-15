class Keepassc
  livecheck do
    url "https://pypi.org/simple/keepassc/"
    regex(/href=.*?keepassc-([0-9.]+)\.t/)
  end
end
