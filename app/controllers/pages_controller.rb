class PagesController < ApplicationController
  def index
    @form_type1 = Type.find(1)
    @form_type2 = Type.find(2)
    @form_type3 = Type.find(3)
  end

  def about
    @page_title = "About Us"
  end
end
