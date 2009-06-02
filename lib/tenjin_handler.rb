class TenjinHandler < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable

  def compile(template)
    directory = File.dirname(template.filename)
    filename = File.basename(template.filename)
    cache_directory = "#{RAILS_ROOT}#{File::SEPARATOR}tmp#{File::SEPARATOR}cache#{File::SEPARATOR}tenjin"

    "RailsTenjinEngine.new(:path => ['#{directory}'], :cache_dir => '#{cache_directory}').render('#{filename}',self)"
  end
  
end
