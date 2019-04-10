// this is generated
module windowskits.build_10_0_17763_0.dxgitype;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgicommon;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;
alias D3DCOLORVALUE = _D3DCOLORVALUE;
alias DXGI_RGBA = D3DCOLORVALUE;
enum _FACDXGI = 0x87a;
enum DXGI_CPU_ACCESS_NONE = ( 0 );
enum DXGI_CPU_ACCESS_DYNAMIC = ( 1 );
enum DXGI_CPU_ACCESS_READ_WRITE = ( 2 );
enum DXGI_CPU_ACCESS_SCRATCH = ( 3 );
enum DXGI_CPU_ACCESS_FIELD = 15;

enum DXGI_MODE_SCANLINE_ORDER {
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0,
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE = 1,
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 2,
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 3,
}

enum DXGI_MODE_SCALING {
    DXGI_MODE_SCALING_UNSPECIFIED = 0,
    DXGI_MODE_SCALING_CENTERED = 1,
    DXGI_MODE_SCALING_STRETCHED = 2,
}

enum DXGI_MODE_ROTATION {
    DXGI_MODE_ROTATION_UNSPECIFIED = 0,
    DXGI_MODE_ROTATION_IDENTITY = 1,
    DXGI_MODE_ROTATION_ROTATE90 = 2,
    DXGI_MODE_ROTATION_ROTATE180 = 3,
    DXGI_MODE_ROTATION_ROTATE270 = 4,
}

struct DXGI_RGB {
    float Red;
    float Green;
    float Blue;
}

struct _D3DCOLORVALUE {
    float r;
    float g;
    float b;
    float a;
}

struct DXGI_GAMMA_CONTROL {
    DXGI_RGB Scale;
    DXGI_RGB Offset;
    DXGI_RGB [1025] GammaCurve;
}

struct DXGI_GAMMA_CONTROL_CAPABILITIES {
    BOOL ScaleAndOffsetSupported;
    float MaxConvertedValue;
    float MinConvertedValue;
    UINT NumGammaControlPoints;
    float [1025] ControlPointPositions;
}

struct DXGI_MODE_DESC {
    UINT Width;
    UINT Height;
    DXGI_RATIONAL RefreshRate;
    DXGI_FORMAT Format;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
}

struct DXGI_JPEG_DC_HUFFMAN_TABLE {
    BYTE [12] CodeCounts;
    BYTE [12] CodeValues;
}

struct DXGI_JPEG_AC_HUFFMAN_TABLE {
    BYTE [16] CodeCounts;
    BYTE [162] CodeValues;
}

struct DXGI_JPEG_QUANTIZATION_TABLE {
    BYTE [64] Elements;
}

}
