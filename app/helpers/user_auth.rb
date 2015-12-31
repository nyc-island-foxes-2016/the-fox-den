def current_fox
  @current_fox ||= Fox.find_by(id: session[:fox_id])
end

def logged_in?
  !!session[:fox_id]
end
