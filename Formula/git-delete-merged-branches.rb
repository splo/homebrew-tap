class GitDeleteMergedBranches < Formula
  version '0.1.0'
  homepage 'https://github.com/splo/git-delete-merged-branches'
  url "https://github.com/splo/git-delete-merged-branches/releases/download/v0.1.0/git-delete-merged-branches-0.1.0-darwin-amd64.tgz"
  sha256 '7cfec33e5685ff5e7e4f00ea1402509a00f33e2e874006510d099d764c87916d'
  head 'https://github.com/splo/git-delete-merged-branches.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'git-delete-merged-branches'
  end
end
