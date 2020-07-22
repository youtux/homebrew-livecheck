class UserspaceRcu
  livecheck do
    url "https://www.lttng.org/files/urcu/"
    regex(/href=.*?userspace-rcu-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
