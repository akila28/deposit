class SavingsdeposittransactionsController < ApplicationController

 def index
   @savingsdeposittransactions = Savingsdeposittransaction.all
  end

 def new
   @savingsdeposittransaction = Savingsdeposittransaction.new
   @savingsdeposittransaction.savingsdeposit_id = params[:id]
 end

 def pending
   @savingsdeposittransaction = Savingsdeposittransaction.all
 end

 def approve
   @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
 end

 def create
  @savingsdeposittransaction = Savingsdeposittransaction.new(params[:savingsdeposittransaction])
   if @savingsdeposittransaction.save
     flash.keep[:success] = "Savingsdeposittransaction added!"
     redirect_to savingsdeposits_path
    else
     flash.keep[:alert] = "savingsdeposittransaction not added"
     render 'new'
   end    
 end

 def edit
   @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
 end

 def update
  @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
   if @savingsdeposittransaction.update_attributes(params[:savingsdeposittransaction])
      flash.keep[:success] = "updated successfully"
      redirect_to savingsdeposittransaction_path(@savingsdeposittransaction)
    else
      flash.keep[:alert] = "failed"
      render 'edit'
   end
 end

 def show
       #@savingsdeposittransaction = current.savingsdeposittransaction
  @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
  @customer = Customer.all
 end
 
 def destroy
  @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
  @savingsdeposittransaction.destroy
  flash.keep[:notice] = "savingsdeposittransaction has been deleted"
  redirect_to savingsdeposittransaction_path
 end

 def activate
  @savingsdeposittransaction = Savingsdeposittransaction.find(params[:id])
  @savingsdeposittransaction.update_attributes!(:status => 'approved')
  redirect_to savingsdeposittransaction_path(@savingsdeposittransaction)
 end 

end