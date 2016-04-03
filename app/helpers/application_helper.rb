module ApplicationHelper

	def draw_title
		title = [@title, @title_suffix].compact
		p title
		return title.join " | "
	end

  def current_path?(path)
    controller, action = path.split('#')
    action = params[:action] if action == '*'
    params[:controller] == controller && params[:action] == action
  end

  def home_page?
    current_path?('application#home_page')
  end

end