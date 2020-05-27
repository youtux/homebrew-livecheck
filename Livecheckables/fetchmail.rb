class Fetchmail
  livecheck do
    regex(%r{url=.+?/branch_\d+(?:\.\d+)*?/fetchmail-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
