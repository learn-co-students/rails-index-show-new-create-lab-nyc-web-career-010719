class CouponsController < ApplicationController

  def default
    redirect_to '/coupons'
  end

  def index
    @coupons = Coupon.all
    render :index
  end

  def new
    render :new
  end

  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

  def create
    # @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

end
