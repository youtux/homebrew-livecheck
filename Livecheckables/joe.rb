class Joe
  livecheck do
    url "https://sourceforge.net/projects/joe-editor/"
    regex(%r{/joe-([0-9.]+)\.t})
  end
end
