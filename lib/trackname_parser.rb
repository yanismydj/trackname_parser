require "trackname_parser/version"
require "trackname_parser/railtie" if defined?(Rails)

module TracknameParser
  class << self
    def parse(trackname)
      @@trackname = trackname

      {
        artist: artist,
        name: name,
        remix: remix,
        label: label
      }
    end

    def artist
      @@trackname.split(' - ')[0]
    rescue NoMethodError
      return ''
    end

    def name
      @@trackname.split(' - ')[1].split(' (')[0]
    rescue NoMethodError
      return ''
    end

    def remix
      @@trackname.split(' (')[1].split(')')[0]
    rescue NoMethodError
      return ''
    end

    def label
      @@trackname.split('[')[1].split(']')[0]
    rescue NoMethodError
      return ''
    end
  end
end
