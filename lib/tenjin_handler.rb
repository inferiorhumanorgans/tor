class TenjinHandler < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable

  def compile(template)
    directory = File.dirname(template.inspect)
    filename = File.basename(template.inspect)
    cache_directory = "#{RAILS_ROOT}#{File::SEPARATOR}tmp#{File::SEPARATOR}cache#{File::SEPARATOR}tenjin#{File::SEPARATOR}"

    "RailsTenjinEngine.new(:path => ['#{directory}'], :cache_dir => '#{cache_directory}').render('#{filename}',self)"
  end
  
end
