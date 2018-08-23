class PagesController < ApplicationController
  def terms
    render "terms_and_conditions"
  end
  def privacy
    render "privacy-policy"
  end
end
