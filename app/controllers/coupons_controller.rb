class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_code:
    params[:coupon][:coupon_code], store:
    params[:coupon][:store])
    @coupon.save
    redirect_to coupons_path(@coupon)
  end

  def edit
    @coupon = Coupon.find_by(params[:id])
  end

  def update
    @coupon = Coupon.find_by(params[:id])
    @coupon.update(params)
    redirect_to coupons_path
  end

  def destroy
    Coupon.find(params[:id]).destroy
    redirect_to coupons_path
  end

  private
  def coupon_params(*args)
    params.require(:coupon).permit(*args)
  end



end
