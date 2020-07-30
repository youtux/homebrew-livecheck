class Mp4v2
  livecheck do
    url "https://www.googleapis.com/download/storage/v1/b/google-code-archive/o/v2%2Fcode.google.com%2Fmp4v2%2Fdownloads-page-1.json?&alt=media"
    regex(/mp4v2[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
