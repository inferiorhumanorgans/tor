require 'tenjin'
require 'fileutils'

ActionView::Template.register_template_handler :tenjin, TenjinHandler

ActionView::Base.class_eval { include Tenjin::ContextHelper }

