// pycpptool generated: 2019-04-14 23:50:55.107407
module windowskits.build_10_0_17763_0.dcommon;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;

interface IDXGISurface: IUnknown {
}

enum DWRITE_MEASURING_MODE {
    NATURAL = 0x00000000,
    GDI_CLASSIC = 0x00000001,
    GDI_NATURAL = 0x00000002,
}

enum DWRITE_GLYPH_IMAGE_FORMATS {
    NONE = 0x00000000,
    TRUETYPE = 0x00000001,
    CFF = 0x00000002,
    COLR = 0x00000004,
    SVG = 0x00000008,
    PNG = 0x00000010,
    JPEG = 0x00000020,
    TIFF = 0x00000040,
    PREMULTIPLIED_B8G8R8A8 = 0x00000080,
}

enum D2D1_ALPHA_MODE {
    UNKNOWN = 0x00000000,
    PREMULTIPLIED = 0x00000001,
    STRAIGHT = 0x00000002,
    IGNORE = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_PIXEL_FORMAT{
  DXGI_FORMAT format;
  D2D1_ALPHA_MODE alphaMode;
}

struct D2D_POINT_2U{
  UINT32 x;
  UINT32 y;
}

struct D2D_POINT_2F{
  FLOAT x;
  FLOAT y;
}

alias D2D_POINT_2L = POINT;

struct D2D_VECTOR_2F{
  FLOAT x;
  FLOAT y;
}

struct D2D_VECTOR_3F{
  FLOAT x;
  FLOAT y;
  FLOAT z;
}

struct D2D_VECTOR_4F{
  FLOAT x;
  FLOAT y;
  FLOAT z;
  FLOAT w;
}

struct D2D_RECT_F{
  FLOAT left;
  FLOAT top;
  FLOAT right;
  FLOAT bottom;
}

struct D2D_RECT_U{
  UINT32 left;
  UINT32 top;
  UINT32 right;
  UINT32 bottom;
}

alias D2D_RECT_L = RECT;

struct D2D_SIZE_F{
  FLOAT width;
  FLOAT height;
}

struct D2D_SIZE_U{
  UINT32 width;
  UINT32 height;
}

struct D2D_MATRIX_3X2_F{
  union {
    struct {
      FLOAT m11;
      FLOAT m12;
      FLOAT m21;
      FLOAT m22;
      FLOAT dx;
      FLOAT dy;
    }
    struct {
      FLOAT _11;
      FLOAT _12;
      FLOAT _21;
      FLOAT _22;
      FLOAT _31;
      FLOAT _32;
    }
    FLOAT [3][2] m;
  }
}

struct D2D_MATRIX_4X3_F{
  union {
    struct {
      FLOAT _11;
      FLOAT _12;
      FLOAT _13;
      FLOAT _21;
      FLOAT _22;
      FLOAT _23;
      FLOAT _31;
      FLOAT _32;
      FLOAT _33;
      FLOAT _41;
      FLOAT _42;
      FLOAT _43;
    }
    FLOAT [4][3] m;
  }
}

struct D2D_MATRIX_4X4_F{
  union {
    struct {
      FLOAT _11;
      FLOAT _12;
      FLOAT _13;
      FLOAT _14;
      FLOAT _21;
      FLOAT _22;
      FLOAT _23;
      FLOAT _24;
      FLOAT _31;
      FLOAT _32;
      FLOAT _33;
      FLOAT _34;
      FLOAT _41;
      FLOAT _42;
      FLOAT _43;
      FLOAT _44;
    }
    FLOAT [4][4] m;
  }
}

struct D2D_MATRIX_5X4_F{
  union {
    struct {
      FLOAT _11;
      FLOAT _12;
      FLOAT _13;
      FLOAT _14;
      FLOAT _21;
      FLOAT _22;
      FLOAT _23;
      FLOAT _24;
      FLOAT _31;
      FLOAT _32;
      FLOAT _33;
      FLOAT _34;
      FLOAT _41;
      FLOAT _42;
      FLOAT _43;
      FLOAT _44;
      FLOAT _51;
      FLOAT _52;
      FLOAT _53;
      FLOAT _54;
    }
    FLOAT [5][4] m;
  }
}

alias D2D1_POINT_2F = D2D_POINT_2F;

alias D2D1_POINT_2U = D2D_POINT_2U;

alias D2D1_POINT_2L = D2D_POINT_2L;

alias D2D1_RECT_F = D2D_RECT_F;

alias D2D1_RECT_U = D2D_RECT_U;

alias D2D1_RECT_L = D2D_RECT_L;

alias D2D1_SIZE_F = D2D_SIZE_F;

alias D2D1_SIZE_U = D2D_SIZE_U;

alias D2D1_MATRIX_3X2_F = D2D_MATRIX_3X2_F;


}
