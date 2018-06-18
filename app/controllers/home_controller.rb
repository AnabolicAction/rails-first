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
  def google

  end
  def game

  end
  def gameresult
    require 'httparty'
    require 'nokogiri'
    url ='https://pubg.op.gg/user/'+params[:username]
    doc = HTTParty.get(url)
    html = Nokogiri::HTML(doc.body)
    @result = html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
    @result = @result.attr('data-ago-date').value
  end
  def application

  end
  
  def applicationresult
    @name =params[:username]
    img=["1.gif","2.jpg","3.jpg","4.png","5.jpg","6.jpg"]
    @img=img.sample()
  end
end
