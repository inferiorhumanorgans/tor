class TenjinHandler < ActionView::TemplateHandler
  include ActionView::TemplateHandlers::Compilable

  def compile(template)
    "Tenjin::Engine.new.render('#{template.filename}',self)"
  end
  
end
