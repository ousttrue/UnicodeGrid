// pycpptool generated: 2019-04-14 19:18:04.017785
module windowskits.build_10_0_17763_0.dxgitype;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgicommon;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;

struct DXGI_RGB{
  float Red;
  float Green;
  float Blue;
}

struct _D3DCOLORVALUE{
  float r;
  float g;
  float b;
  float a;
}

alias D3DCOLORVALUE = _D3DCOLORVALUE;

alias DXGI_RGBA = D3DCOLORVALUE;

struct DXGI_GAMMA_CONTROL{
  DXGI_RGB Scale;
  DXGI_RGB Offset;
  DXGI_RGB [1025] GammaCurve;
}

struct DXGI_GAMMA_CONTROL_CAPABILITIES{
  BOOL ScaleAndOffsetSupported;
  float MaxConvertedValue;
  float MinConvertedValue;
  UINT NumGammaControlPoints;
  float [1025] ControlPointPositions;
}

enum DXGI_MODE_SCANLINE_ORDER {
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0x00000000,
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE = 0x00000001,
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 0x00000002,
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 0x00000003,
}

enum DXGI_MODE_SCALING {
    DXGI_MODE_SCALING_UNSPECIFIED = 0x00000000,
    DXGI_MODE_SCALING_CENTERED = 0x00000001,
    DXGI_MODE_SCALING_STRETCHED = 0x00000002,
}

enum DXGI_MODE_ROTATION {
    DXGI_MODE_ROTATION_UNSPECIFIED = 0x00000000,
    DXGI_MODE_ROTATION_IDENTITY = 0x00000001,
    DXGI_MODE_ROTATION_ROTATE90 = 0x00000002,
    DXGI_MODE_ROTATION_ROTATE180 = 0x00000003,
    DXGI_MODE_ROTATION_ROTATE270 = 0x00000004,
}

struct DXGI_MODE_DESC{
  UINT Width;
  UINT Height;
  DXGI_RATIONAL RefreshRate;
  DXGI_FORMAT Format;
  DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
  DXGI_MODE_SCALING Scaling;
}

struct DXGI_JPEG_DC_HUFFMAN_TABLE{
  BYTE [12] CodeCounts;
  BYTE [12] CodeValues;
}

struct DXGI_JPEG_AC_HUFFMAN_TABLE{
  BYTE [16] CodeCounts;
  BYTE [162] CodeValues;
}

struct DXGI_JPEG_QUANTIZATION_TABLE{
  BYTE [64] Elements;
}


}
