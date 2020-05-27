class Mpw
  livecheck do
    url "https://gitlab.com/MasterPassword/MasterPassword.git"
    regex(/^v?(\d+(?:\.\d+)+.?cli.?\d+)$/)
  end
end
