class Gpa
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gpa/"
    regex(/href=.*?gpa[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
