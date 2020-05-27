class Dcmtk
  livecheck do
    url "https://dicom.offis.de/download/dcmtk/release/"
    regex(/href="dcmtk-([0-9\._]+)\.t/)
  end
end
