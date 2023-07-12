def do_these_numbers_have_a_product_of_5040(num1, num2, num3, num4, num5, num6, num7)
    product = num1 * num2 * num3* num4 * num5 * num6 * num7
    if product == 5040
        puts("True! These numbers do have a product of 5040")
    else
        puts("Boring, these numbers do not! There product is #{product}. Try again")
    end
end

do_these_numbers_have_a_product_of_5040(6, 7, 8, 1, 4, 5, 6)
do_these_numbers_have_a_product_of_5040(1, 2, 3, 4, 5, 6, 7)
do_these_numbers_have_a_product_of_5040(1, 2, 3, 4, 5, 6, 6)
do_these_numbers_have_a_product_of_5040(100, 22, 3444, 4666, 57432, 6234523, 7234523)
