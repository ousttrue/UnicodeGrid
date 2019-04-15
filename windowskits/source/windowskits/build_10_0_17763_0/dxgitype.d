// pycpptool generated: 2019-04-15 21:18:23.049548
module windowskits.build_10_0_17763_0.dxgitype;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgicommon;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;

enum _FACDXGI = 0x87a;
enum DXGI_CPU_ACCESS_NONE = ( 0 );
enum DXGI_CPU_ACCESS_DYNAMIC = ( 1 );
enum DXGI_CPU_ACCESS_READ_WRITE = ( 2 );
enum DXGI_CPU_ACCESS_SCRATCH = ( 3 );
enum DXGI_CPU_ACCESS_FIELD = 15;
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
    UNSPECIFIED = 0x00000000,
    PROGRESSIVE = 0x00000001,
    UPPER_FIELD_FIRST = 0x00000002,
    LOWER_FIELD_FIRST = 0x00000003,
}

enum DXGI_MODE_SCALING {
    UNSPECIFIED = 0x00000000,
    CENTERED = 0x00000001,
    STRETCHED = 0x00000002,
}

enum DXGI_MODE_ROTATION {
    UNSPECIFIED = 0x00000000,
    IDENTITY = 0x00000001,
    ROTATE90 = 0x00000002,
    ROTATE180 = 0x00000003,
    ROTATE270 = 0x00000004,
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
