class Rpm
  livecheck do
    url "https://github.com/rpm-software-management/rpm.git"
    regex(/rpm-([0-9.]+)-release/i)
  end
end
