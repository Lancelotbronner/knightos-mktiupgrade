# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

# includes
INCS = -Itiupgrade -Icrypto -libtom

# flags
CFLAGS = -Wall -Wextra -pedantic -std=c99 -O2 -g $(INCS)

# C compiler
CC = cc

# crypto
CRYPTO = crypto/md5.c crypto/ticrypto.c

# libtom
LIBTOM =\
	libtom/bncore.c\
	libtom/bn_error.c\
	libtom/bn_fast_mp_invmod.c\
	libtom/bn_fast_mp_montgomery_reduce.c\
	libtom/bn_fast_s_mp_mul_digs.c\
	libtom/bn_fast_s_mp_mul_high_digs.c\
	libtom/bn_fast_s_mp_sqr.c\
	libtom/bn_mp_2expt.c\
	libtom/bn_mp_abs.c\
	libtom/bn_mp_add.c\
	libtom/bn_mp_add_d.c\
	libtom/bn_mp_addmod.c\
	libtom/bn_mp_and.c\
	libtom/bn_mp_clamp.c\
	libtom/bn_mp_clear.c\
	libtom/bn_mp_clear_multi.c\
	libtom/bn_mp_cmp.c\
	libtom/bn_mp_cmp_d.c\
	libtom/bn_mp_cmp_mag.c\
	libtom/bn_mp_cnt_lsb.c\
	libtom/bn_mp_copy.c\
	libtom/bn_mp_count_bits.c\
	libtom/bn_mp_div_2.c\
	libtom/bn_mp_div_2d.c\
	libtom/bn_mp_div_3.c\
	libtom/bn_mp_div.c\
	libtom/bn_mp_div_d.c\
	libtom/bn_mp_dr_is_modulus.c\
	libtom/bn_mp_dr_reduce.c\
	libtom/bn_mp_dr_setup.c\
	libtom/bn_mp_exch.c\
	libtom/bn_mp_expt_d.c\
	libtom/bn_mp_exptmod.c\
	libtom/bn_mp_exptmod_fast.c\
	libtom/bn_mp_exteuclid.c\
	libtom/bn_mp_fread.c\
	libtom/bn_mp_fwrite.c\
	libtom/bn_mp_gcd.c\
	libtom/bn_mp_get_int.c\
	libtom/bn_mp_grow.c\
	libtom/bn_mp_init.c\
	libtom/bn_mp_init_copy.c\
	libtom/bn_mp_init_multi.c\
	libtom/bn_mp_init_set.c\
	libtom/bn_mp_init_set_int.c\
	libtom/bn_mp_init_size.c\
	libtom/bn_mp_invmod.c\
	libtom/bn_mp_invmod_slow.c\
	libtom/bn_mp_is_square.c\
	libtom/bn_mp_jacobi.c\
	libtom/bn_mp_karatsuba_mul.c\
	libtom/bn_mp_karatsuba_sqr.c\
	libtom/bn_mp_lcm.c\
	libtom/bn_mp_lshd.c\
	libtom/bn_mp_mod_2d.c\
	libtom/bn_mp_mod.c\
	libtom/bn_mp_mod_d.c\
	libtom/bn_mp_montgomery_calc_normalization.c\
	libtom/bn_mp_montgomery_reduce.c\
	libtom/bn_mp_montgomery_setup.c\
	libtom/bn_mp_mul_2.c\
	libtom/bn_mp_mul_2d.c\
	libtom/bn_mp_mul.c\
	libtom/bn_mp_mul_d.c\
	libtom/bn_mp_mulmod.c\
	libtom/bn_mp_neg.c\
	libtom/bn_mp_n_root.c\
	libtom/bn_mp_or.c\
	libtom/bn_mp_prime_fermat.c\
	libtom/bn_mp_prime_is_divisible.c\
	libtom/bn_mp_prime_is_prime.c\
	libtom/bn_mp_prime_miller_rabin.c\
	libtom/bn_mp_prime_next_prime.c\
	libtom/bn_mp_prime_rabin_miller_trials.c\
	libtom/bn_mp_prime_random_ex.c\
	libtom/bn_mp_radix_size.c\
	libtom/bn_mp_radix_smap.c\
	libtom/bn_mp_rand.c\
	libtom/bn_mp_read_radix.c\
	libtom/bn_mp_read_signed_bin.c\
	libtom/bn_mp_read_unsigned_bin.c\
	libtom/bn_mp_reduce_2k.c\
	libtom/bn_mp_reduce_2k_l.c\
	libtom/bn_mp_reduce_2k_setup.c\
	libtom/bn_mp_reduce_2k_setup_l.c\
	libtom/bn_mp_reduce.c\
	libtom/bn_mp_reduce_is_2k.c\
	libtom/bn_mp_reduce_is_2k_l.c\
	libtom/bn_mp_reduce_setup.c\
	libtom/bn_mp_rshd.c\
	libtom/bn_mp_set.c\
	libtom/bn_mp_set_int.c\
	libtom/bn_mp_shrink.c\
	libtom/bn_mp_signed_bin_size.c\
	libtom/bn_mp_sqr.c\
	libtom/bn_mp_sqrmod.c\
	libtom/bn_mp_sqrt.c\
	libtom/bn_mp_sub.c\
	libtom/bn_mp_sub_d.c\
	libtom/bn_mp_submod.c\
	libtom/bn_mp_toom_mul.c\
	libtom/bn_mp_toom_sqr.c\
	libtom/bn_mp_toradix.c\
	libtom/bn_mp_toradix_n.c\
	libtom/bn_mp_to_signed_bin.c\
	libtom/bn_mp_to_signed_bin_n.c\
	libtom/bn_mp_to_unsigned_bin.c\
	libtom/bn_mp_to_unsigned_bin_n.c\
	libtom/bn_mp_unsigned_bin_size.c\
	libtom/bn_mp_xor.c\
	libtom/bn_mp_zero.c\
	libtom/bn_prime_tab.c\
	libtom/bn_reverse.c\
	libtom/bn_s_mp_add.c\
	libtom/bn_s_mp_exptmod.c\
	libtom/bn_s_mp_mul_digs.c\
	libtom/bn_s_mp_mul_high_digs.c\
	libtom/bn_s_mp_sqr.c\
	libtom/bn_s_mp_sub.c\

# upgrade
UPGRADE=\
	tiupgrade/devices.c\
	tiupgrade/intelhex.c\
	tiupgrade/upgrade.c\
