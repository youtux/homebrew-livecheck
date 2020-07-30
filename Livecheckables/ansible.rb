class Ansible
  livecheck do
    url "https://releases.ansible.com/ansible/"
    regex(/href=.*?ansible[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
