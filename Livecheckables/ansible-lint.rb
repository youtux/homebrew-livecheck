class AnsibleLint
  livecheck do
    url :stable
    regex(/href=.*?ansible-lint-([0-9.]+)\.t/)
  end
end
