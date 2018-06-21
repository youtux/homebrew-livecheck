class AnsibleAT20
  livecheck :url => "https://releases.ansible.com/ansible/",
            :regex => /href="ansible-(2\.0\.[0-9\.]+)\.t/
end
