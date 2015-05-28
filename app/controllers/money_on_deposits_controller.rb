class MoneyOnDepositsController < ApplicationController
  before_action :set_money_on_deposit, only: [:show, :edit, :update, :destroy]

  # GET /money_on_deposits
  # GET /money_on_deposits.json
  def index
    @money_on_deposits = MoneyOnDeposit.all
  end

  # GET /money_on_deposits/1
  # GET /money_on_deposits/1.json
  def show
  end

  # GET /money_on_deposits/new
  def new
    @money_on_deposit = MoneyOnDeposit.new
  end

  # GET /money_on_deposits/1/edit
  def edit
  end

  # POST /money_on_deposits
  # POST /money_on_deposits.json
  def create
    @money_on_deposit = MoneyOnDeposit.new(money_on_deposit_params)
    @money_on_deposit.customer_id = session[:customer_id]


    respond_to do |format|
      if @money_on_deposit.save
        format.html { redirect_to @money_on_deposit, notice: 'Money on deposit was successfully created.' }
        format.json { render :show, status: :created, location: @money_on_deposit }
      else
        format.html { render :new }
        format.json { render json: @money_on_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_on_deposits/1
  # PATCH/PUT /money_on_deposits/1.json
  def update
    respond_to do |format|
      if @money_on_deposit.update(money_on_deposit_params)
        format.html { redirect_to @money_on_deposit, notice: 'Money on deposit was successfully updated.' }
        format.json { render :show, status: :ok, location: @money_on_deposit }
      else
        format.html { render :edit }
        format.json { render json: @money_on_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_on_deposits/1
  # DELETE /money_on_deposits/1.json
  def destroy
    @money_on_deposit.destroy
    respond_to do |format|
      format.html { redirect_to money_on_deposits_url, notice: 'Money on deposit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_on_deposit
      @money_on_deposit = MoneyOnDeposit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def money_on_deposit_params
      params.require(:money_on_deposit).permit(:institution, :amount, :account_number, :price, :original_value, :customer_id, :insurance_id, :receipt_id)
    end
end
