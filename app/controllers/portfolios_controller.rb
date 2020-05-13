class PortfoliosController < ApplicationController  
  def index
    @portfolios = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end


  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
    
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }        
      else
        format.html { render :edit }
      end
    end
    
  end

  def show
    @portfolio = Portfolio.find(params[:id])        
  end

  def destroy
    # Perfrom a lookup
    @portfolio_item = Portfolio.find(params[:id])
    
    # Destroy or delete the record
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body, 
                                      :text, 
                                      technologies_attributes: [:name]
                                    )
  end


end
