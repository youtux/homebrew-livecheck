class Nco
  livecheck do
    url "https://sourceforge.net/projects/nco/"
    regex(%r{/nco[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
