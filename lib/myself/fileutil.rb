require "myself/fileutil/version"

module Myself
  
  module Fileutil

    def self.ls(dir)

      #file_contents = Dir.entries(dir)
      file_contents = Dir.glob(dir + File::SEPARATOR + "**" + File::SEPARATOR + "*")
      return file_contents

    end

  end

end
