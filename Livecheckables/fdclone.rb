class Fdclone
  livecheck do
    url :homepage
    regex(%r{HREF="\./FD-([0-9.a-z]+)\.t})
  end
end
