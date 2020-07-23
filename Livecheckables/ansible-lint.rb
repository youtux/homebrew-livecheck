class AnsibleLint
  livecheck do
    url :stable
    regex(/href=.*?ansible-lint-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
