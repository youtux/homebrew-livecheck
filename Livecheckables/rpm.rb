class Rpm
  livecheck do
    url "https://github.com/rpm-software-management/rpm.git"
    regex(/rpm[._-]v?(\d+(?:\.\d+)+)-release/i)
  end
end
