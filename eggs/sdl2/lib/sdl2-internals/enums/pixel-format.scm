;;
;; chicken-sdl2: CHICKEN Scheme bindings to Simple DirectMedia Layer 2
;;
;; Copyright © 2013, 2015-2016  John Croisant.
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;; - Redistributions of source code must retain the above copyright
;;   notice, this list of conditions and the following disclaimer.
;;
;; - Redistributions in binary form must reproduce the above copyright
;;   notice, this list of conditions and the following disclaimer in
;;   the documentation and/or other materials provided with the
;;   distribution.
;;
;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
;; FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
;; COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
;; INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
;; (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
;; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
;; STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
;; OF THE POSSIBILITY OF SUCH DAMAGE.


(define-foreign-constants Uint8
  SDL_ALPHA_OPAQUE
  SDL_ALPHA_TRANSPARENT)


(define-foreign-constants SDL_PixelTypeEnum
  SDL_PIXELTYPE_UNKNOWN
  SDL_PIXELTYPE_INDEX1
  SDL_PIXELTYPE_INDEX4
  SDL_PIXELTYPE_INDEX8
  SDL_PIXELTYPE_PACKED8
  SDL_PIXELTYPE_PACKED16
  SDL_PIXELTYPE_PACKED32
  SDL_PIXELTYPE_ARRAYU8
  SDL_PIXELTYPE_ARRAYU16
  SDL_PIXELTYPE_ARRAYU32
  SDL_PIXELTYPE_ARRAYF16
  SDL_PIXELTYPE_ARRAYF32)

(define-foreign-constants SDL_BitmapOrderEnum
  SDL_BITMAPORDER_NONE
  SDL_BITMAPORDER_4321
  SDL_BITMAPORDER_1234)

(define-foreign-constants SDL_PackedOrderEnum
  SDL_PACKEDORDER_NONE
  SDL_PACKEDORDER_XRGB
  SDL_PACKEDORDER_RGBX
  SDL_PACKEDORDER_ARGB
  SDL_PACKEDORDER_RGBA
  SDL_PACKEDORDER_XBGR
  SDL_PACKEDORDER_BGRX
  SDL_PACKEDORDER_ABGR
  SDL_PACKEDORDER_BGRA)

(define-foreign-constants SDL_ArrayOrderEnum
  SDL_ARRAYORDER_NONE
  SDL_ARRAYORDER_RGB
  SDL_ARRAYORDER_RGBA
  SDL_ARRAYORDER_ARGB
  SDL_ARRAYORDER_BGR
  SDL_ARRAYORDER_BGRA
  SDL_ARRAYORDER_ABGR)

(define-foreign-constants SDL_PackedLayoutEnum
  SDL_PACKEDLAYOUT_NONE
  SDL_PACKEDLAYOUT_332
  SDL_PACKEDLAYOUT_4444
  SDL_PACKEDLAYOUT_1555
  SDL_PACKEDLAYOUT_5551
  SDL_PACKEDLAYOUT_565
  SDL_PACKEDLAYOUT_8888
  SDL_PACKEDLAYOUT_2101010
  SDL_PACKEDLAYOUT_1010102)


(export pixel-format-enum->symbol
        symbol->pixel-format-enum)

(define-enum-mappings
  type: SDL_PixelFormatEnum
  value->symbol: pixel-format-enum->symbol
  symbol->value: symbol->pixel-format-enum

  ((SDL_PIXELFORMAT_UNKNOWN      unknown)
   (SDL_PIXELFORMAT_INDEX1LSB    index1lsb)
   (SDL_PIXELFORMAT_INDEX1MSB    index1msb)
   (SDL_PIXELFORMAT_INDEX4LSB    index4lsb)
   (SDL_PIXELFORMAT_INDEX4MSB    index4msb)
   (SDL_PIXELFORMAT_INDEX8       index8)
   (SDL_PIXELFORMAT_RGB332       rgb332)
   (SDL_PIXELFORMAT_RGB444       rgb444)
   (SDL_PIXELFORMAT_RGB555       rgb555)
   (SDL_PIXELFORMAT_BGR555       bgr555)
   (SDL_PIXELFORMAT_ARGB4444     argb4444)
   (SDL_PIXELFORMAT_RGBA4444     rgba4444)
   (SDL_PIXELFORMAT_ABGR4444     abgr4444)
   (SDL_PIXELFORMAT_BGRA4444     bgra4444)
   (SDL_PIXELFORMAT_ARGB1555     argb1555)
   (SDL_PIXELFORMAT_RGBA5551     rgba5551)
   (SDL_PIXELFORMAT_ABGR1555     abgr1555)
   (SDL_PIXELFORMAT_BGRA5551     bgra5551)
   (SDL_PIXELFORMAT_RGB565       rgb565)
   (SDL_PIXELFORMAT_BGR565       bgr565)
   (SDL_PIXELFORMAT_RGB24        rgb24)
   (SDL_PIXELFORMAT_BGR24        bgr24)
   (SDL_PIXELFORMAT_RGB888       rgb888)
   (SDL_PIXELFORMAT_RGBX8888     rgbx8888)
   (SDL_PIXELFORMAT_BGR888       bgr888)
   (SDL_PIXELFORMAT_BGRX8888     bgrx8888)
   (SDL_PIXELFORMAT_ARGB8888     argb8888)
   (SDL_PIXELFORMAT_RGBA8888     rgba8888)
   (SDL_PIXELFORMAT_ABGR8888     abgr8888)
   (SDL_PIXELFORMAT_BGRA8888     bgra8888)
   (SDL_PIXELFORMAT_ARGB2101010  argb2101010)
   (SDL_PIXELFORMAT_YV12         yv12)
   (SDL_PIXELFORMAT_IYUV         iyuv)
   (SDL_PIXELFORMAT_YUY2         yuy2)
   (SDL_PIXELFORMAT_UYVY         uyvy)
   (SDL_PIXELFORMAT_YVYU         yvyu)))
