class UserspaceRcu
  livecheck do
    url "https://www.lttng.org/files/urcu/"
    regex(/href=.*?userspace-rcu-([0-9.]+)\.t/)
  end
end
