require "trackname_parser/version"
require "trackname_parser/railtie" if defined?(Rails)

module TracknameParser
  def self.parse(trackname)
    {
      artist: trackname.split(' - ')[0],
      name: trackname.split(' - ')[1].split(' (')[0],
      remix: trackname.split(' (')[1].split(')')[0],
      label: trackname.split('[')[1].split(']')[0]
    }
  end
end
