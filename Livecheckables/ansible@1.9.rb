class AnsibleAT19
  livecheck :url => "https://releases.ansible.com/ansible/",
            :regex => /href="ansible-(1\.9\.[0-9\.]+)\.t/
end
