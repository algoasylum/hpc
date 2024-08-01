@echo off

REM Compiler definitions
set GCC=gcc
set ICC=icx-cl
set CFLAGS=-std=c99 -O3 -Wall -Wextra
set ICC_FLAGS=/Qstd=c99 /O3 /Wall
set ICC_LIB=/link /LIBPATH:"C:\Program Files (x86)\Intel\oneAPI\compiler\latest\lib"

REM GCC Compilations
%GCC% %CFLAGS% -o SPMV-DOUBLE spmv-double.c mmio.c
%GCC% %CFLAGS% -o SPMV-FLOAT spmv-float.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV-FLOAT-SSE spmv-float-sse.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV-FLOAT-AVX spmv-float-avx.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV-DOUBLE-SSE spmv-double-sse.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV-DOUBLE-AVX spmv-double-avx.c mmio.c
%GCC% %CFLAGS% -march=native -mfma -o SPMV-FLOAT-AVX-ALIGNMENT4 spmv-float-avx-alignment4.c mmio.c
%GCC% %CFLAGS% -march=native -mfma -o SPMV-DOUBLE-AVX-ALIGNMENT4 spmv-double-avx-alignment4.c mmio.c
%GCC% %CFLAGS% -march=native -mfma -o SPMV-FLOAT-AVX-ALIGNMENT8 spmv-float-avx-alignment8.c mmio.c
%GCC% %CFLAGS% -o SPMV10X-FLOAT spmv10x-float.c mmio.c
%GCC% %CFLAGS% -o SPMV10X-DOUBLE spmv10x-double.c mmio.c
%GCC% %CFLAGS% -march=native -mfma -o SPMV10X-DOUBLE-AVX spmv10x-double-avx.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV10X-DOUBLE-SSE spmv10x-double-sse.c mmio.c
%GCC% %CFLAGS% -march=native -mfma -o SPMV10X-DOUBLE-AVX-ALIGNMENT4 spmv10x-double-avx-alignment4.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV10X-FLOAT-AVX spmv10x-float-avx.c mmio.c
%GCC% %CFLAGS% -march=native -o SPMV10X-FLOAT-AVX-ALIGNMENT8 spmv10x-float-avx-alignment8.c mmio.c

REM ICC Compilations
%ICC% %ICC_FLAGS% spmv-double.c mmio.c /Fe:ICC-SPMV-DOUBLE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% spmv-float.c mmio.c /Fe:ICC-SPMV-FLOAT.exe %ICC_LIB%
%ICC% %ICC_FLAGS% spmv10x-double.c mmio.c /Fe:ICC-SPMV10X-DOUBLE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% spmv10x-float.c mmio.c /Fe:ICC-SPMV10X-FLOAT.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxSSE4.2 spmv-float-sse.c mmio.c /Fe:ICC-SPMV-FLOAT-SSE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxSSE4.2 spmv-double-sse.c mmio.c /Fe:ICC-SPMV-DOUBLE-SSE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxSSE4.2 spmv10x-double-sse.c mmio.c /Fe:ICC-SPMV10X-DOUBLE-SSE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxSSE4.2 spmv10x-float-sse.c mmio.c /Fe:ICC-SPMV10X-FLOAT-SSE.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv-double-avx.c mmio.c /Fe:ICC-SPMV-DOUBLE-AVX.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv-float-avx.c mmio.c /Fe:ICC-SPMV-FLOAT-AVX.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv10x-double-avx.c mmio.c /Fe:ICC-SPMV10X-DOUBLE-AVX.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv10x-float-avx.c mmio.c /Fe:ICC-SPMV10X-FLOAT-AVX.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv10x-double-avx-alignment4.c mmio.c /Fe:ICC-SPMV10X-DOUBLE-AVX-ALIGNMENT4.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv-double-avx-alignment4.c mmio.c /Fe:ICC-SPMV-DOUBLE-AVX-ALIGNMENT4.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv10x-float-avx-alignment8.c mmio.c /Fe:ICC-SPMV10X-FLOAT-AVX-ALIGNMENT8.exe %ICC_LIB%
%ICC% %ICC_FLAGS% /QxAVX2 spmv-float-avx-alignment4.c mmio.c /Fe:ICC-SPMV-FLOAT-AVX-ALIGNMENT4.exe %ICC_LIB%

echo Compilation complete.