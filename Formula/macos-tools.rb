class MacosTools < Formula
  desc "Simple command-line utilities only usable on macOS."
  homepage "https://github.com/splo/macos-tools"
  head "https://github.com/splo/macos-tools.git"
  url "https://github.com/splo/macos-tools/archive/v1.0.0.tar.gz"
  sha256 "3cc60f7ddf5b8eec83842c93d8c72f8e657a18a423bcdd2dbf6142c1dabb7590"

  def install
    bin.install "bin/bluetooth-ctl"
    bin.install "bin/delete-dsstores"
    bin.install "bin/flush-cache"
  end
end
