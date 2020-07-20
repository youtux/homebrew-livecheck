class S3Backer
  livecheck do
    url "https://build.opensuse.org/package/view_file/openSUSE:Factory/s3backer/s3backer.spec"
    regex(/Version:\s+([0-9.]+)/i)
  end
end
