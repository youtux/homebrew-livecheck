class VirtViewer < Formula
  livecheck :url => "https://virt-manager.org/download/sources/virt-viewer/",
            :regex => /virt-viewer-([\d.]+)\.tar\.gz/
end
