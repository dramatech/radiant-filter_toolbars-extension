module RadiantFilterToolbarsExtension
  module Controllers
    module Admin
      module PagesController
        def self.included(base)
          base.class_eval do
            before_filter :filter_toolbar_assets, :only => [:new, :edit]

            private

            def filter_toolbar_assets
              @javascripts << 'admin/filter_toolbars/control/livepipe'
              @javascripts << 'admin/filter_toolbars/control/textarea'
              @javascripts << 'admin/filter_toolbars/filter_toolbars'
              @javascripts << 'admin/filter_toolbars/filters/textile'
              @javascripts << 'admin/filter_toolbars/filters/markdown'
              @stylesheets << 'admin/filter_toolbars'
            end
          end
        end
      end
    end
  end
end
