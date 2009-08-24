## extends base Tenjin Engine
## receive options[:cache_dir] in the initializer
## overwrite method #cachename to store cache files in custom cache directory
class RailsTenjinEngine < Tenjin::Engine

  def initialize(options={})
    @cache_dir = options[:cache_dir] || ''

    super(options)
  end

  def cachename(filename)
    cache_filename = "#{@cache_dir}#{filename.gsub(RAILS_ROOT,'')}.cache"
    
    unless File.exist?(cache_filename)
      FileUtils.mkdir_p(File.dirname(cache_filename))
    end
    
    cache_filename.untaint
  end

end
