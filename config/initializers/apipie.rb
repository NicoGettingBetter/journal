Apipie.configure do |config|
  config.app_name                = 'JournalApi'
  config.api_base_url            = '/'
  config.doc_base_url            = '/apidoc'
  # where is your API defined?
  config.api_controllers_matcher = Rails.root.join('app/controllers/*.rb')
  config.api_routes = Rails.application.routes
  config.default_version = 'v1'
  config.validate = false
  config.show_all_examples = true
end
