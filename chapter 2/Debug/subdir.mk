################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../any_odd_one_264.c \
../check_bits_261.c \
../conversion_floating_point.c \
../copy_elements.c \
../div16.c \
../divide_power2_277.c \
../evaluate_cast_expressions.c \
../fits_bits_270.c \
../float_absval_292.c \
../float_f2i_295.c \
../float_half_294.c \
../float_i2f_296.c \
../float_negate_291.c \
../float_twice_293.c \
../fpwr2_289.c \
../gen_bit_280.c \
../int_size_is_32_267.c \
../is_little_endian.c \
../is_shifts_are_arithmetic_262.c \
../leftmost_one_266.c \
../lower_one_mask_268.c \
../macro_floating_point.c \
../main.c \
../mask_expression.c \
../merge_word.c \
../mul3div4_278.c \
../odd_ones_265.c \
../practice_2_44.c \
../print_bytes.c \
../replace_byte.c \
../reverse_array.c \
../rotate_left_269.c \
../saturating_add_273.c \
../sign_extension.c \
../srl_sra_263.c \
../strlonger.c \
../sum_elements.c \
../tadd_ok.c \
../test_exp_281.c \
../threefourths_279.c \
../tmul_ok.c \
../tsub_ok_274.c \
../uadd_ok.c \
../unsigned_high_prod_275.c \
../xbyte_271.c 

OBJS += \
./any_odd_one_264.o \
./check_bits_261.o \
./conversion_floating_point.o \
./copy_elements.o \
./div16.o \
./divide_power2_277.o \
./evaluate_cast_expressions.o \
./fits_bits_270.o \
./float_absval_292.o \
./float_f2i_295.o \
./float_half_294.o \
./float_i2f_296.o \
./float_negate_291.o \
./float_twice_293.o \
./fpwr2_289.o \
./gen_bit_280.o \
./int_size_is_32_267.o \
./is_little_endian.o \
./is_shifts_are_arithmetic_262.o \
./leftmost_one_266.o \
./lower_one_mask_268.o \
./macro_floating_point.o \
./main.o \
./mask_expression.o \
./merge_word.o \
./mul3div4_278.o \
./odd_ones_265.o \
./practice_2_44.o \
./print_bytes.o \
./replace_byte.o \
./reverse_array.o \
./rotate_left_269.o \
./saturating_add_273.o \
./sign_extension.o \
./srl_sra_263.o \
./strlonger.o \
./sum_elements.o \
./tadd_ok.o \
./test_exp_281.o \
./threefourths_279.o \
./tmul_ok.o \
./tsub_ok_274.o \
./uadd_ok.o \
./unsigned_high_prod_275.o \
./xbyte_271.o 

C_DEPS += \
./any_odd_one_264.d \
./check_bits_261.d \
./conversion_floating_point.d \
./copy_elements.d \
./div16.d \
./divide_power2_277.d \
./evaluate_cast_expressions.d \
./fits_bits_270.d \
./float_absval_292.d \
./float_f2i_295.d \
./float_half_294.d \
./float_i2f_296.d \
./float_negate_291.d \
./float_twice_293.d \
./fpwr2_289.d \
./gen_bit_280.d \
./int_size_is_32_267.d \
./is_little_endian.d \
./is_shifts_are_arithmetic_262.d \
./leftmost_one_266.d \
./lower_one_mask_268.d \
./macro_floating_point.d \
./main.d \
./mask_expression.d \
./merge_word.d \
./mul3div4_278.d \
./odd_ones_265.d \
./practice_2_44.d \
./print_bytes.d \
./replace_byte.d \
./reverse_array.d \
./rotate_left_269.d \
./saturating_add_273.d \
./sign_extension.d \
./srl_sra_263.d \
./strlonger.d \
./sum_elements.d \
./tadd_ok.d \
./test_exp_281.d \
./threefourths_279.d \
./tmul_ok.d \
./tsub_ok_274.d \
./uadd_ok.d \
./unsigned_high_prod_275.d \
./xbyte_271.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


