class CalculationsController < ApplicationController

  def flexible_square_5
    # Parameters: {"number"=>"8"}

    @user_num = params["number"].to_f
    @user_num_square = @user_num**2

    render("calculations/flexible_square_5.html.erb")

  end

  def flexible_square_root_5

    @user_num = params["number"].to_f
    @user_num_square_root = @user_num ** 0.5

    render("calculations/flexible_square_root_5.html.erb")

  end

  def flexible_payment

    @apr = params[:rate].to_f
    @years = params[:term].to_i
    @principal = params[:principal].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    monthly_apr = @apr/100/12
    months = @years*12
    numerator = monthly_apr*((1+monthly_apr)**months)
    denominator = ((1+monthly_apr)**months) - 1

    @monthly_payment = @principal*(numerator/denominator)

    render("calculations/flexible_payment.html.erb")

  end

end
