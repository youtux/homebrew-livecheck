class Joe
  livecheck do
    url "https://sourceforge.net/projects/joe-editor/"
    regex(%r{/joe-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
