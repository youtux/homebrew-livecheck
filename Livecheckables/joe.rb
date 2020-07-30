class Joe
  livecheck do
    url "https://sourceforge.net/projects/joe-editor/"
    regex(%r{/joe[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
