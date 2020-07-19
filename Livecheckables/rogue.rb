class Rogue
  livecheck do
    url "https://src.fedoraproject.org/repo/pkgs/rogue/"
    regex(/href=.*?rogue-?v?(\d+(?:\.\d+)+)(?:-src)?\.t/i)
  end
end
