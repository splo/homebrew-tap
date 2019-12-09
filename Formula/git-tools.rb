class GitTools < Formula
  desc "Helpful Git tools"
  homepage "https://github.com/splo/git-tools"
  url "https://github.com/splo/git-tools/archive/v1.1.0.tar.gz"
  sha256 "c0402ba159beecd149529a254adb99c0f7f8825feca0eb507f8f42476b588134"
  head "https://github.com/splo/git-tools.git"

  def install
    bin.install "bin/git-delete-merged-branches"
    bin.install "bin/git-foreach"
  end

  test do
    assert_match "/usr/local/bin/git-delete-merged-branches", shell_output("which git-delete-merged-branches")
    assert_match "/usr/local/bin/git-foreach", shell_output("which git-foreach")
  end
end
