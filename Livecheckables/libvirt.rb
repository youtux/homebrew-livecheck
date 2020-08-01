class Libvirt
  livecheck do
    url "https://libvirt.org/sources/"
    regex(/href=.*?libvirt[._-]v?([\d.]+)\.t/i)
  end
end
