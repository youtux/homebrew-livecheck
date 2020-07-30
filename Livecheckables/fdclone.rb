class Fdclone
  livecheck do
    url :homepage
    regex(%r{href=.*?\./FD[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
