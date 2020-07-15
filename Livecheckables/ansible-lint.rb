class AnsibleLint
  livecheck do
    url "https://pypi.org/simple/ansible-lint/"
    regex(/href=.*?ansible-lint-([0-9.]+)\.t/)
  end
end
