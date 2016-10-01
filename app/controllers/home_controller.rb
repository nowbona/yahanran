class HomeController < ApplicationController


    def about
    end
    
    def index
    end
    
    def contact
    end
    
    def faq
        @contents= Poem.all.order("id desc")
    end
    
    def services
    end
    
    def write
    end
    
    def save
        poem=Poem.new
        poem.content= params[:content]
        poem.save
        
        redirect_to "/home/faq"
    end
    
    def destroyall
        @all_poem = Poem.all
        @all_poem.destroy_all
        
        redirect_to "/home/faq"
    end
    
    def order
        @allprice= params[:setnumber].to_i * 5000
        
        orderlist=Orderlist.new
        orderlist.name= params[:name]
        orderlist.tel= params[:tel]
        orderlist.setnumber= params[:setnumber]
        orderlist.allprice= @allprice
        orderlist.save
    end
    
    def orderlists
        @orderlist= Orderlist.all
    end

end