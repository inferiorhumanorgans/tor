class TenjinHandler < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable

  def compile(template)
    directory = File.dirname(template.filename)
    filename = File.basename(template.filename)
    "Tenjin::Engine.new(:path => ['#{directory}']).render('#{filename}',self)"
  end
  
end
