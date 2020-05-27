class Gpa
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gpa/"
    regex(/href="gpa-(\d+\.\d+(\.\d+)?)/)
  end
end
