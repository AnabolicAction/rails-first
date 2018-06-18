class HomeController < ApplicationController
  # 하나의 액션
  def lotto
    @lotto=(1..45).to_a.sample(6)
  end
  #lotto :erb 를 안해줘도 저절로 erb를 찾아서 실행시켜준다.

  def index
  end
  def welcome
    @name =params[:name]
  end
end
