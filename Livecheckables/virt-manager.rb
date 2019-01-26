class VirtManager
  livecheck :url => "https://virt-manager.org/download/sources/virt-manager/",
            :regex => /virt-manager-([\d.]+)\.tar\.gz/
end
