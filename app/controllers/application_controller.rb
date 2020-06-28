class ApplicationController < ActionController::Base
  before_action :authorize_action

  def authorize_action
    controllers = %w[products ware_houses ware_houses_products]
    redirect_to root_path, alert: 'No such Page is available' if controllers.exclude?(controller_name)

    redirect_to root_path, alert: "You don't have the authority to access this page." if ((controller_name == 'products' and ['new', 'show'].include?(action_name)) || (controller_name == 'ware_houses' and ['edit', 'show'].include?(action_name)) || (controller_name == 'ware_house_products'))
  end
end
