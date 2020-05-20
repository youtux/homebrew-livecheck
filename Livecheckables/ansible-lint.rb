class AnsibleLint
  livecheck :url   => "https://pypi.org/simple/ansible-lint/",
            :regex => %r{href=".*?/ansible-lint-([0-9\.]+)\.t}
end
