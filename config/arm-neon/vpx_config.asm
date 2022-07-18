@ This file was created from a .asm file
@  using the ads2gas.pl script.
.syntax unified
.equ VPX_ARCH_ARM ,  1
.equ VPX_ARCH_MIPS ,  0
.equ VPX_ARCH_X86 ,  0
.equ VPX_ARCH_X86_64 ,  0
.equ VPX_ARCH_PPC ,  0
.equ VPX_ARCH_LOONGARCH ,  0
.equ HAVE_NEON ,  1
.equ HAVE_NEON_ASM ,  1
.equ HAVE_MIPS32 ,  0
.equ HAVE_DSPR2 ,  0
.equ HAVE_MSA ,  0
.equ HAVE_MIPS64 ,  0
.equ HAVE_MMX ,  0
.equ HAVE_SSE ,  0
.equ HAVE_SSE2 ,  0
.equ HAVE_SSE3 ,  0
.equ HAVE_SSSE3 ,  0
.equ HAVE_SSE4_1 ,  0
.equ HAVE_AVX ,  0
.equ HAVE_AVX2 ,  0
.equ HAVE_AVX512 ,  0
.equ HAVE_VSX ,  0
.equ HAVE_MMI ,  0
.equ HAVE_LSX ,  0
.equ HAVE_LASX ,  0
.equ HAVE_VPX_PORTS ,  1
.equ HAVE_PTHREAD_H ,  1
.equ HAVE_UNISTD_H ,  1
.equ CONFIG_DEPENDENCY_TRACKING ,  1
.equ CONFIG_EXTERNAL_BUILD ,  1
.equ CONFIG_INSTALL_DOCS ,  0
.equ CONFIG_INSTALL_BINS ,  1
.equ CONFIG_INSTALL_LIBS ,  1
.equ CONFIG_INSTALL_SRCS ,  0
.equ CONFIG_DEBUG ,  0
.equ CONFIG_GPROF ,  0
.equ CONFIG_GCOV ,  0
.equ CONFIG_RVCT ,  0
.equ CONFIG_GCC ,  1
.equ CONFIG_MSVS ,  0
.equ CONFIG_PIC ,  1
.equ CONFIG_BIG_ENDIAN ,  0
.equ CONFIG_CODEC_SRCS ,  0
.equ CONFIG_DEBUG_LIBS ,  0
.equ CONFIG_DEQUANT_TOKENS ,  0
.equ CONFIG_DC_RECON ,  0
.equ CONFIG_RUNTIME_CPU_DETECT ,  0
.equ CONFIG_POSTPROC ,  0
.equ CONFIG_VP9_POSTPROC ,  0
.equ CONFIG_MULTITHREAD ,  1
.equ CONFIG_INTERNAL_STATS ,  0
.equ CONFIG_VP8_ENCODER ,  1
.equ CONFIG_VP8_DECODER ,  1
.equ CONFIG_VP9_ENCODER ,  1
.equ CONFIG_VP9_DECODER ,  1
.equ CONFIG_VP8 ,  1
.equ CONFIG_VP9 ,  1
.equ CONFIG_ENCODERS ,  1
.equ CONFIG_DECODERS ,  1
.equ CONFIG_STATIC_MSVCRT ,  0
.equ CONFIG_SPATIAL_RESAMPLING ,  1
.equ CONFIG_REALTIME_ONLY ,  1
.equ CONFIG_ONTHEFLY_BITPACKING ,  0
.equ CONFIG_ERROR_CONCEALMENT ,  0
.equ CONFIG_SHARED ,  0
.equ CONFIG_STATIC ,  1
.equ CONFIG_SMALL ,  0
.equ CONFIG_POSTPROC_VISUALIZER ,  0
.equ CONFIG_OS_SUPPORT ,  1
.equ CONFIG_UNIT_TESTS ,  1
.equ CONFIG_WEBM_IO ,  1
.equ CONFIG_LIBYUV ,  1
.equ CONFIG_DECODE_PERF_TESTS ,  0
.equ CONFIG_ENCODE_PERF_TESTS ,  0
.equ CONFIG_MULTI_RES_ENCODING ,  0
.equ CONFIG_TEMPORAL_DENOISING ,  1
.equ CONFIG_VP9_TEMPORAL_DENOISING ,  0
.equ CONFIG_CONSISTENT_RECODE ,  0
.equ CONFIG_COEFFICIENT_RANGE_CHECKING ,  0
.equ CONFIG_VP9_HIGHBITDEPTH ,  1
.equ CONFIG_BETTER_HW_COMPATIBILITY ,  0
.equ CONFIG_EXPERIMENTAL ,  0
.equ CONFIG_SIZE_LIMIT ,  1
.equ CONFIG_ALWAYS_ADJUST_BPM ,  0
.equ CONFIG_BITSTREAM_DEBUG ,  0
.equ CONFIG_MISMATCH_DEBUG ,  0
.equ CONFIG_FP_MB_STATS ,  0
.equ CONFIG_EMULATE_HARDWARE ,  0
.equ CONFIG_NON_GREEDY_MV ,  0
.equ CONFIG_RATE_CTRL ,  0
    .section .note.GNU-stack,"",%progbits
