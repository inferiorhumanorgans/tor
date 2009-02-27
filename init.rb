require 'tenjin'

ActionView::Template.register_template_handler :tenjin, TenjinHandler

ActionView::Base.module_eval { include Tenjin::ContextHelper }

