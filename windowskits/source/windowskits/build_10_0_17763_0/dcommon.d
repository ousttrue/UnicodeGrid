// this is generated
module windowskits.build_10_0_17763_0.dcommon;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;
alias D2D_POINT_2L = POINT;
alias D2D_RECT_L = RECT;
alias D2D1_POINT_2F = D2D_POINT_2F;
alias D2D1_POINT_2U = D2D_POINT_2U;
alias D2D1_POINT_2L = D2D_POINT_2L;
alias D2D1_RECT_F = D2D_RECT_F;
alias D2D1_RECT_U = D2D_RECT_U;
alias D2D1_RECT_L = D2D_RECT_L;
alias D2D1_SIZE_F = D2D_SIZE_F;
alias D2D1_SIZE_U = D2D_SIZE_U;
alias D2D1_MATRIX_3X2_F = D2D_MATRIX_3X2_F;

enum DWRITE_MEASURING_MODE {
    DWRITE_MEASURING_MODE_NATURAL = 0,
    DWRITE_MEASURING_MODE_GDI_CLASSIC = 1,
    DWRITE_MEASURING_MODE_GDI_NATURAL = 2,
}

enum DWRITE_GLYPH_IMAGE_FORMATS {
    DWRITE_GLYPH_IMAGE_FORMATS_NONE = 0,
    DWRITE_GLYPH_IMAGE_FORMATS_TRUETYPE = 1,
    DWRITE_GLYPH_IMAGE_FORMATS_CFF = 2,
    DWRITE_GLYPH_IMAGE_FORMATS_COLR = 4,
    DWRITE_GLYPH_IMAGE_FORMATS_SVG = 8,
    DWRITE_GLYPH_IMAGE_FORMATS_PNG = 16,
    DWRITE_GLYPH_IMAGE_FORMATS_JPEG = 32,
    DWRITE_GLYPH_IMAGE_FORMATS_TIFF = 64,
    DWRITE_GLYPH_IMAGE_FORMATS_PREMULTIPLIED_B8G8R8A8 = 128,
}

enum D2D1_ALPHA_MODE {
    D2D1_ALPHA_MODE_UNKNOWN = 0,
    D2D1_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_ALPHA_MODE_STRAIGHT = 2,
    D2D1_ALPHA_MODE_IGNORE = 3,
    D2D1_ALPHA_MODE_FORCE_DWORD = -1,
}

struct D2D1_PIXEL_FORMAT {
    DXGI_FORMAT format;
    D2D1_ALPHA_MODE alphaMode;
}

struct D2D_POINT_2U {
    UINT32 x;
    UINT32 y;
}

struct D2D_POINT_2F {
    FLOAT x;
    FLOAT y;
}

struct D2D_VECTOR_2F {
    FLOAT x;
    FLOAT y;
}

struct D2D_VECTOR_3F {
    FLOAT x;
    FLOAT y;
    FLOAT z;
}

struct D2D_VECTOR_4F {
    FLOAT x;
    FLOAT y;
    FLOAT z;
    FLOAT w;
}

struct D2D_RECT_F {
    FLOAT left;
    FLOAT top;
    FLOAT right;
    FLOAT bottom;
}

struct D2D_RECT_U {
    UINT32 left;
    UINT32 top;
    UINT32 right;
    UINT32 bottom;
}

struct D2D_SIZE_F {
    FLOAT width;
    FLOAT height;
}

struct D2D_SIZE_U {
    UINT32 width;
    UINT32 height;
}

struct D2D_MATRIX_3X2_F {
}

struct D2D_MATRIX_4X3_F {
}

struct D2D_MATRIX_4X4_F {
}

struct D2D_MATRIX_5X4_F {
}

interface IDXGISurface: IUnknown {
    
}

}
