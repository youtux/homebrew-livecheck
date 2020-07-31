class AnsibleLint
  livecheck do
    url :stable
    regex(/href=.*?ansible-lint[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
