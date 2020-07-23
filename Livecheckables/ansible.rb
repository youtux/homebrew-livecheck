class Ansible
  livecheck do
    url "https://releases.ansible.com/ansible/"
    regex(/href=.*?ansible-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
