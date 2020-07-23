class S3Backer
  livecheck do
    url "https://build.opensuse.org/package/view_file/openSUSE:Factory/s3backer/s3backer.spec"
    regex(/Version:\s+v?(\d+(?:\.\d+)+)/i)
  end
end
