class GitTools < Formula
  desc "Helpful Git tools"
  homepage "https://github.com/splo/git-tools"
  url "https://github.com/splo/git-tools/archive/v1.0.0.tar.gz"
  sha256 "7ae76630bb6845a18528c6a09b15b16bcade1da4a265399b26b8cd7814e7bf3d"
  head "https://github.com/splo/git-tools.git"

  def install
    bin.install "bin/git-delete-merged-branches"
  end

  test do
    assert_match "/usr/local/bin/git-delete-merged-branches", shell_output("which git-delete-merged-branches")
  end
end
