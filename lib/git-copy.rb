require 'tmpdir'
require 'addressable/uri'

module Git

  def self.copy(src, dst)
    # Copy a remote git repo to another remote destination
    #
    # Example:
    #   >> GitCopy("https://github.com/cybertk/git-copy", "https://bitbucket.com/mirror.git")
    #   >> GitCopy("https://github.com/cybertk/git-copy", "mirror.git")
    uri = Addressable::URI.parse(dst)

    # Convert to absolute path for local path
    dst = File.absolute_path(dst) unless uri.scheme

    if uri.scheme || File.exist?(dst)

      Dir.mktmpdir('git-copy-') do |dir|
        # Clone source into temp working dir
        unless `git clone --bare #{src} #{dir}`.to_i == 0
          raise 'git clone faild'
        end

        unless `cd #{dir}; git push -f --mirror #{dst}`.to_i == 0
          raise 'git push faild'
        end
      end
    else
      # Copy to local path
      unless `git clone --bare #{src} #{dst}`.to_i == 0
        raise 'git clone failed'
      end
    end

  end

end
