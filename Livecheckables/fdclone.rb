class Fdclone
  livecheck do
    url :homepage
    regex(%r{href=.*?\./FD-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
