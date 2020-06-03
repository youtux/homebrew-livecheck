class Ansible
  livecheck do
    url "https://releases.ansible.com/ansible/"
    regex(/href="ansible-([0-9.]+)\.t/)
  end
end
