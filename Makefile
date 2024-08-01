# Compiler definitions
GCC = gcc
ICC = icx-cl
CFLAGS = -std=c99 -O3 -Wall -Wextra
ICC_FLAGS = /Qstd=c99 /O3 /Wall
ICC_LIB = /link /LIBPATH:"C:\Program Files (x86)\Intel\oneAPI\compiler\latest\lib"

# Targets
GCC_TARGETS = SPMV-DOUBLE SPMV-FLOAT SPMV-FLOAT-SSE SPMV-FLOAT-AVX SPMV-DOUBLE-SSE SPMV-DOUBLE-AVX \
              SPMV-FLOAT-AVX-ALIGNMENT4 SPMV-DOUBLE-AVX-ALIGNMENT4 SPMV-FLOAT-AVX-ALIGNMENT8 \
              SPMV10X-DOUBLE SPMV10X-FLOAT SPMV10X-DOUBLE-AVX SPMV10X-DOUBLE-SSE \
              SPMV10X-DOUBLE-AVX-ALIGNMENT4 SPMV10X-FLOAT-AVX SPMV10X-FLOAT-AVX-ALIGNMENT8

ICC_TARGETS = ICC-SPMV-DOUBLE ICC-SPMV-FLOAT ICC-SPMV10X-DOUBLE ICC-SPMV10X-FLOAT \
              ICC-SPMV-FLOAT-SSE ICC-SPMV-DOUBLE-SSE ICC-SPMV10X-DOUBLE-SSE ICC-SPMV10X-FLOAT-SSE \
              ICC-SPMV-DOUBLE-AVX ICC-SPMV-FLOAT-AVX ICC-SPMV10X-DOUBLE-AVX ICC-SPMV10X-FLOAT-AVX \
              ICC-SPMV10X-DOUBLE-AVX-ALIGNMENT4 ICC-SPMV-DOUBLE-AVX-ALIGNMENT4 \
              ICC-SPMV10X-FLOAT-AVX-ALIGNMENT8 ICC-SPMV-FLOAT-AVX-ALIGNMENT4

all: $(GCC_TARGETS) $(ICC_TARGETS)

# GCC Compilation Rules
SPMV-DOUBLE: spmv-double.c mmio.c
	$(GCC) $(CFLAGS) -o $@ $^

SPMV-FLOAT: spmv-float.c mmio.c
	$(GCC) $(CFLAGS) -o $@ $^

SPMV-FLOAT-SSE: spmv-float-sse.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV-FLOAT-AVX: spmv-float-avx.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV-DOUBLE-SSE: spmv-double-sse.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV-DOUBLE-AVX: spmv-double-avx.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV-FLOAT-AVX-ALIGNMENT4: spmv-float-avx-alignment4.c mmio.c
	$(GCC) $(CFLAGS) -march=native -mfma -o $@ $^

SPMV-DOUBLE-AVX-ALIGNMENT4: spmv-double-avx-alignment4.c mmio.c
	$(GCC) $(CFLAGS) -march=native -mfma -o $@ $^

SPMV-FLOAT-AVX-ALIGNMENT8: spmv-float-avx-alignment8.c mmio.c
	$(GCC) $(CFLAGS) -march=native -mfma -o $@ $^

SPMV10X-FLOAT: spmv10x-float.c mmio.c
	$(GCC) $(CFLAGS) -o $@ $^

SPMV10X-DOUBLE: spmv10x-double.c mmio.c
	$(GCC) $(CFLAGS) -o $@ $^

SPMV10X-DOUBLE-AVX: spmv10x-double-avx.c mmio.c
	$(GCC) $(CFLAGS) -march=native -mfma -o $@ $^

SPMV10X-DOUBLE-SSE: spmv10x-double-sse.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV10X-DOUBLE-AVX-ALIGNMENT4: spmv10x-double-avx-alignment4.c mmio.c
	$(GCC) $(CFLAGS) -march=native -mfma -o $@ $^

SPMV10X-FLOAT-AVX: spmv10x-float-avx.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

SPMV10X-FLOAT-AVX-ALIGNMENT8: spmv10x-float-avx-alignment8.c mmio.c
	$(GCC) $(CFLAGS) -march=native -o $@ $^

# ICC Compilation Rules
ICC-SPMV-DOUBLE: spmv-double.c mmio.c
	$(ICC) $(ICC_FLAGS) $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-FLOAT: spmv-float.c mmio.c
	$(ICC) $(ICC_FLAGS) $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-DOUBLE: spmv10x-double.c mmio.c
	$(ICC) $(ICC_FLAGS) $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-FLOAT: spmv10x-float.c mmio.c
	$(ICC) $(ICC_FLAGS) $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-FLOAT-SSE: spmv-float-sse.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxSSE4.2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-DOUBLE-SSE: spmv-double-sse.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxSSE4.2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-DOUBLE-SSE: spmv10x-double-sse.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxSSE4.2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-FLOAT-SSE: spmv10x-float-sse.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxSSE4.2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-DOUBLE-AVX: spmv-double-avx.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-FLOAT-AVX: spmv-float-avx.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-DOUBLE-AVX: spmv10x-double-avx.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-FLOAT-AVX: spmv10x-float-avx.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-DOUBLE-AVX-ALIGNMENT4: spmv10x-double-avx-alignment4.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-DOUBLE-AVX-ALIGNMENT4: spmv-double-avx-alignment4.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV10X-FLOAT-AVX-ALIGNMENT8: spmv10x-float-avx-alignment8.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

ICC-SPMV-FLOAT-AVX-ALIGNMENT4: spmv-float-avx-alignment4.c mmio.c
	$(ICC) $(ICC_FLAGS) /QxAVX2 $^ /Fe:$@.exe $(ICC_LIB)

clean:
	rm -f $(GCC_TARGETS) $(addsuffix .exe,$(ICC_TARGETS))