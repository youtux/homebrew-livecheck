class Fig2dev
  livecheck do
    url :stable
    regex(%r{url=.*?/fig2dev[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
