// this is generated
module windowskits.build_10_0_17763_0.d3dcommon;

import core.sys.windows.windef;
import core.sys.windows.com;

extern(Windows){

alias IID = GUID;
alias D3D_SHADER_MACRO = _D3D_SHADER_MACRO;
alias LPD3D_SHADER_MACRO = _D3D_SHADER_MACRO;
alias LPD3D10BLOB = ID3D10Blob;
alias ID3DBlob = ID3D10Blob;
alias LPD3DBLOB = ID3DBlob;
alias PFN_DESTRUCTION_CALLBACK = void*;
alias D3D_INCLUDE_TYPE = _D3D_INCLUDE_TYPE;
alias LPD3DINCLUDE = ID3DInclude;
alias D3D_SHADER_VARIABLE_CLASS = _D3D_SHADER_VARIABLE_CLASS;
alias D3D_SHADER_VARIABLE_FLAGS = _D3D_SHADER_VARIABLE_FLAGS;
alias D3D_SHADER_VARIABLE_TYPE = _D3D_SHADER_VARIABLE_TYPE;
alias D3D_SHADER_INPUT_FLAGS = _D3D_SHADER_INPUT_FLAGS;
alias D3D_SHADER_INPUT_TYPE = _D3D_SHADER_INPUT_TYPE;
alias D3D_SHADER_CBUFFER_FLAGS = _D3D_SHADER_CBUFFER_FLAGS;
alias D3D_CBUFFER_TYPE = _D3D_CBUFFER_TYPE;
alias D3D_PARAMETER_FLAGS = _D3D_PARAMETER_FLAGS;
immutable D3D_FL9_1_REQ_TEXTURE1D_U_DIMENSION = 2048;
immutable D3D_FL9_3_REQ_TEXTURE1D_U_DIMENSION = 4096;
immutable D3D_FL9_1_REQ_TEXTURE2D_U_OR_V_DIMENSION = 2048;
immutable D3D_FL9_3_REQ_TEXTURE2D_U_OR_V_DIMENSION = 4096;
immutable D3D_FL9_1_REQ_TEXTURECUBE_DIMENSION = 512;
immutable D3D_FL9_3_REQ_TEXTURECUBE_DIMENSION = 4096;
immutable D3D_FL9_1_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = 256;
immutable D3D_FL9_1_DEFAULT_MAX_ANISOTROPY = 2;
immutable D3D_FL9_1_IA_PRIMITIVE_MAX_COUNT = 65535;
immutable D3D_FL9_2_IA_PRIMITIVE_MAX_COUNT = 1048575;
immutable D3D_FL9_1_SIMULTANEOUS_RENDER_TARGET_COUNT = 1;
immutable D3D_FL9_3_SIMULTANEOUS_RENDER_TARGET_COUNT = 4;
immutable D3D_FL9_1_MAX_TEXTURE_REPEAT = 128;
immutable D3D_FL9_2_MAX_TEXTURE_REPEAT = 2048;
immutable D3D_FL9_3_MAX_TEXTURE_REPEAT = 8192;
immutable D3D_COMPONENT_MASK_X = 1;
immutable D3D_COMPONENT_MASK_Y = 2;
immutable D3D_COMPONENT_MASK_Z = 4;
immutable D3D_COMPONENT_MASK_W = 8;

enum D3D_DRIVER_TYPE {
    D3D_DRIVER_TYPE_UNKNOWN = 0,
    D3D_DRIVER_TYPE_HARDWARE = 1,
    D3D_DRIVER_TYPE_REFERENCE = 2,
    D3D_DRIVER_TYPE_NULL = 3,
    D3D_DRIVER_TYPE_SOFTWARE = 4,
    D3D_DRIVER_TYPE_WARP = 5,
}

enum D3D_FEATURE_LEVEL {
    D3D_FEATURE_LEVEL_9_1 = 37120,
    D3D_FEATURE_LEVEL_9_2 = 37376,
    D3D_FEATURE_LEVEL_9_3 = 37632,
    D3D_FEATURE_LEVEL_10_0 = 40960,
    D3D_FEATURE_LEVEL_10_1 = 41216,
    D3D_FEATURE_LEVEL_11_0 = 45056,
    D3D_FEATURE_LEVEL_11_1 = 45312,
    D3D_FEATURE_LEVEL_12_0 = 49152,
    D3D_FEATURE_LEVEL_12_1 = 49408,
}

enum D3D_PRIMITIVE_TOPOLOGY {
    D3D_PRIMITIVE_TOPOLOGY_UNDEFINED = 0,
    D3D_PRIMITIVE_TOPOLOGY_POINTLIST = 1,
    D3D_PRIMITIVE_TOPOLOGY_LINELIST = 2,
    D3D_PRIMITIVE_TOPOLOGY_LINESTRIP = 3,
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4,
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5,
    D3D_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10,
    D3D_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11,
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12,
    D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13,
    D3D_PRIMITIVE_TOPOLOGY_1_CONTROL_POINT_PATCHLIST = 33,
    D3D_PRIMITIVE_TOPOLOGY_2_CONTROL_POINT_PATCHLIST = 34,
    D3D_PRIMITIVE_TOPOLOGY_3_CONTROL_POINT_PATCHLIST = 35,
    D3D_PRIMITIVE_TOPOLOGY_4_CONTROL_POINT_PATCHLIST = 36,
    D3D_PRIMITIVE_TOPOLOGY_5_CONTROL_POINT_PATCHLIST = 37,
    D3D_PRIMITIVE_TOPOLOGY_6_CONTROL_POINT_PATCHLIST = 38,
    D3D_PRIMITIVE_TOPOLOGY_7_CONTROL_POINT_PATCHLIST = 39,
    D3D_PRIMITIVE_TOPOLOGY_8_CONTROL_POINT_PATCHLIST = 40,
    D3D_PRIMITIVE_TOPOLOGY_9_CONTROL_POINT_PATCHLIST = 41,
    D3D_PRIMITIVE_TOPOLOGY_10_CONTROL_POINT_PATCHLIST = 42,
    D3D_PRIMITIVE_TOPOLOGY_11_CONTROL_POINT_PATCHLIST = 43,
    D3D_PRIMITIVE_TOPOLOGY_12_CONTROL_POINT_PATCHLIST = 44,
    D3D_PRIMITIVE_TOPOLOGY_13_CONTROL_POINT_PATCHLIST = 45,
    D3D_PRIMITIVE_TOPOLOGY_14_CONTROL_POINT_PATCHLIST = 46,
    D3D_PRIMITIVE_TOPOLOGY_15_CONTROL_POINT_PATCHLIST = 47,
    D3D_PRIMITIVE_TOPOLOGY_16_CONTROL_POINT_PATCHLIST = 48,
    D3D_PRIMITIVE_TOPOLOGY_17_CONTROL_POINT_PATCHLIST = 49,
    D3D_PRIMITIVE_TOPOLOGY_18_CONTROL_POINT_PATCHLIST = 50,
    D3D_PRIMITIVE_TOPOLOGY_19_CONTROL_POINT_PATCHLIST = 51,
    D3D_PRIMITIVE_TOPOLOGY_20_CONTROL_POINT_PATCHLIST = 52,
    D3D_PRIMITIVE_TOPOLOGY_21_CONTROL_POINT_PATCHLIST = 53,
    D3D_PRIMITIVE_TOPOLOGY_22_CONTROL_POINT_PATCHLIST = 54,
    D3D_PRIMITIVE_TOPOLOGY_23_CONTROL_POINT_PATCHLIST = 55,
    D3D_PRIMITIVE_TOPOLOGY_24_CONTROL_POINT_PATCHLIST = 56,
    D3D_PRIMITIVE_TOPOLOGY_25_CONTROL_POINT_PATCHLIST = 57,
    D3D_PRIMITIVE_TOPOLOGY_26_CONTROL_POINT_PATCHLIST = 58,
    D3D_PRIMITIVE_TOPOLOGY_27_CONTROL_POINT_PATCHLIST = 59,
    D3D_PRIMITIVE_TOPOLOGY_28_CONTROL_POINT_PATCHLIST = 60,
    D3D_PRIMITIVE_TOPOLOGY_29_CONTROL_POINT_PATCHLIST = 61,
    D3D_PRIMITIVE_TOPOLOGY_30_CONTROL_POINT_PATCHLIST = 62,
    D3D_PRIMITIVE_TOPOLOGY_31_CONTROL_POINT_PATCHLIST = 63,
    D3D_PRIMITIVE_TOPOLOGY_32_CONTROL_POINT_PATCHLIST = 64,
    D3D10_PRIMITIVE_TOPOLOGY_UNDEFINED = 0,
    D3D10_PRIMITIVE_TOPOLOGY_POINTLIST = 1,
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST = 2,
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP = 3,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5,
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10,
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13,
    D3D11_PRIMITIVE_TOPOLOGY_UNDEFINED = 0,
    D3D11_PRIMITIVE_TOPOLOGY_POINTLIST = 1,
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST = 2,
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP = 3,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 4,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 5,
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 10,
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 11,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 12,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 13,
    D3D11_PRIMITIVE_TOPOLOGY_1_CONTROL_POINT_PATCHLIST = 33,
    D3D11_PRIMITIVE_TOPOLOGY_2_CONTROL_POINT_PATCHLIST = 34,
    D3D11_PRIMITIVE_TOPOLOGY_3_CONTROL_POINT_PATCHLIST = 35,
    D3D11_PRIMITIVE_TOPOLOGY_4_CONTROL_POINT_PATCHLIST = 36,
    D3D11_PRIMITIVE_TOPOLOGY_5_CONTROL_POINT_PATCHLIST = 37,
    D3D11_PRIMITIVE_TOPOLOGY_6_CONTROL_POINT_PATCHLIST = 38,
    D3D11_PRIMITIVE_TOPOLOGY_7_CONTROL_POINT_PATCHLIST = 39,
    D3D11_PRIMITIVE_TOPOLOGY_8_CONTROL_POINT_PATCHLIST = 40,
    D3D11_PRIMITIVE_TOPOLOGY_9_CONTROL_POINT_PATCHLIST = 41,
    D3D11_PRIMITIVE_TOPOLOGY_10_CONTROL_POINT_PATCHLIST = 42,
    D3D11_PRIMITIVE_TOPOLOGY_11_CONTROL_POINT_PATCHLIST = 43,
    D3D11_PRIMITIVE_TOPOLOGY_12_CONTROL_POINT_PATCHLIST = 44,
    D3D11_PRIMITIVE_TOPOLOGY_13_CONTROL_POINT_PATCHLIST = 45,
    D3D11_PRIMITIVE_TOPOLOGY_14_CONTROL_POINT_PATCHLIST = 46,
    D3D11_PRIMITIVE_TOPOLOGY_15_CONTROL_POINT_PATCHLIST = 47,
    D3D11_PRIMITIVE_TOPOLOGY_16_CONTROL_POINT_PATCHLIST = 48,
    D3D11_PRIMITIVE_TOPOLOGY_17_CONTROL_POINT_PATCHLIST = 49,
    D3D11_PRIMITIVE_TOPOLOGY_18_CONTROL_POINT_PATCHLIST = 50,
    D3D11_PRIMITIVE_TOPOLOGY_19_CONTROL_POINT_PATCHLIST = 51,
    D3D11_PRIMITIVE_TOPOLOGY_20_CONTROL_POINT_PATCHLIST = 52,
    D3D11_PRIMITIVE_TOPOLOGY_21_CONTROL_POINT_PATCHLIST = 53,
    D3D11_PRIMITIVE_TOPOLOGY_22_CONTROL_POINT_PATCHLIST = 54,
    D3D11_PRIMITIVE_TOPOLOGY_23_CONTROL_POINT_PATCHLIST = 55,
    D3D11_PRIMITIVE_TOPOLOGY_24_CONTROL_POINT_PATCHLIST = 56,
    D3D11_PRIMITIVE_TOPOLOGY_25_CONTROL_POINT_PATCHLIST = 57,
    D3D11_PRIMITIVE_TOPOLOGY_26_CONTROL_POINT_PATCHLIST = 58,
    D3D11_PRIMITIVE_TOPOLOGY_27_CONTROL_POINT_PATCHLIST = 59,
    D3D11_PRIMITIVE_TOPOLOGY_28_CONTROL_POINT_PATCHLIST = 60,
    D3D11_PRIMITIVE_TOPOLOGY_29_CONTROL_POINT_PATCHLIST = 61,
    D3D11_PRIMITIVE_TOPOLOGY_30_CONTROL_POINT_PATCHLIST = 62,
    D3D11_PRIMITIVE_TOPOLOGY_31_CONTROL_POINT_PATCHLIST = 63,
    D3D11_PRIMITIVE_TOPOLOGY_32_CONTROL_POINT_PATCHLIST = 64,
}

enum D3D_PRIMITIVE {
    D3D_PRIMITIVE_UNDEFINED = 0,
    D3D_PRIMITIVE_POINT = 1,
    D3D_PRIMITIVE_LINE = 2,
    D3D_PRIMITIVE_TRIANGLE = 3,
    D3D_PRIMITIVE_LINE_ADJ = 6,
    D3D_PRIMITIVE_TRIANGLE_ADJ = 7,
    D3D_PRIMITIVE_1_CONTROL_POINT_PATCH = 8,
    D3D_PRIMITIVE_2_CONTROL_POINT_PATCH = 9,
    D3D_PRIMITIVE_3_CONTROL_POINT_PATCH = 10,
    D3D_PRIMITIVE_4_CONTROL_POINT_PATCH = 11,
    D3D_PRIMITIVE_5_CONTROL_POINT_PATCH = 12,
    D3D_PRIMITIVE_6_CONTROL_POINT_PATCH = 13,
    D3D_PRIMITIVE_7_CONTROL_POINT_PATCH = 14,
    D3D_PRIMITIVE_8_CONTROL_POINT_PATCH = 15,
    D3D_PRIMITIVE_9_CONTROL_POINT_PATCH = 16,
    D3D_PRIMITIVE_10_CONTROL_POINT_PATCH = 17,
    D3D_PRIMITIVE_11_CONTROL_POINT_PATCH = 18,
    D3D_PRIMITIVE_12_CONTROL_POINT_PATCH = 19,
    D3D_PRIMITIVE_13_CONTROL_POINT_PATCH = 20,
    D3D_PRIMITIVE_14_CONTROL_POINT_PATCH = 21,
    D3D_PRIMITIVE_15_CONTROL_POINT_PATCH = 22,
    D3D_PRIMITIVE_16_CONTROL_POINT_PATCH = 23,
    D3D_PRIMITIVE_17_CONTROL_POINT_PATCH = 24,
    D3D_PRIMITIVE_18_CONTROL_POINT_PATCH = 25,
    D3D_PRIMITIVE_19_CONTROL_POINT_PATCH = 26,
    D3D_PRIMITIVE_20_CONTROL_POINT_PATCH = 27,
    D3D_PRIMITIVE_21_CONTROL_POINT_PATCH = 28,
    D3D_PRIMITIVE_22_CONTROL_POINT_PATCH = 29,
    D3D_PRIMITIVE_23_CONTROL_POINT_PATCH = 30,
    D3D_PRIMITIVE_24_CONTROL_POINT_PATCH = 31,
    D3D_PRIMITIVE_25_CONTROL_POINT_PATCH = 32,
    D3D_PRIMITIVE_26_CONTROL_POINT_PATCH = 33,
    D3D_PRIMITIVE_27_CONTROL_POINT_PATCH = 34,
    D3D_PRIMITIVE_28_CONTROL_POINT_PATCH = 35,
    D3D_PRIMITIVE_29_CONTROL_POINT_PATCH = 36,
    D3D_PRIMITIVE_30_CONTROL_POINT_PATCH = 37,
    D3D_PRIMITIVE_31_CONTROL_POINT_PATCH = 38,
    D3D_PRIMITIVE_32_CONTROL_POINT_PATCH = 39,
    D3D10_PRIMITIVE_UNDEFINED = 0,
    D3D10_PRIMITIVE_POINT = 1,
    D3D10_PRIMITIVE_LINE = 2,
    D3D10_PRIMITIVE_TRIANGLE = 3,
    D3D10_PRIMITIVE_LINE_ADJ = 6,
    D3D10_PRIMITIVE_TRIANGLE_ADJ = 7,
    D3D11_PRIMITIVE_UNDEFINED = 0,
    D3D11_PRIMITIVE_POINT = 1,
    D3D11_PRIMITIVE_LINE = 2,
    D3D11_PRIMITIVE_TRIANGLE = 3,
    D3D11_PRIMITIVE_LINE_ADJ = 6,
    D3D11_PRIMITIVE_TRIANGLE_ADJ = 7,
    D3D11_PRIMITIVE_1_CONTROL_POINT_PATCH = 8,
    D3D11_PRIMITIVE_2_CONTROL_POINT_PATCH = 9,
    D3D11_PRIMITIVE_3_CONTROL_POINT_PATCH = 10,
    D3D11_PRIMITIVE_4_CONTROL_POINT_PATCH = 11,
    D3D11_PRIMITIVE_5_CONTROL_POINT_PATCH = 12,
    D3D11_PRIMITIVE_6_CONTROL_POINT_PATCH = 13,
    D3D11_PRIMITIVE_7_CONTROL_POINT_PATCH = 14,
    D3D11_PRIMITIVE_8_CONTROL_POINT_PATCH = 15,
    D3D11_PRIMITIVE_9_CONTROL_POINT_PATCH = 16,
    D3D11_PRIMITIVE_10_CONTROL_POINT_PATCH = 17,
    D3D11_PRIMITIVE_11_CONTROL_POINT_PATCH = 18,
    D3D11_PRIMITIVE_12_CONTROL_POINT_PATCH = 19,
    D3D11_PRIMITIVE_13_CONTROL_POINT_PATCH = 20,
    D3D11_PRIMITIVE_14_CONTROL_POINT_PATCH = 21,
    D3D11_PRIMITIVE_15_CONTROL_POINT_PATCH = 22,
    D3D11_PRIMITIVE_16_CONTROL_POINT_PATCH = 23,
    D3D11_PRIMITIVE_17_CONTROL_POINT_PATCH = 24,
    D3D11_PRIMITIVE_18_CONTROL_POINT_PATCH = 25,
    D3D11_PRIMITIVE_19_CONTROL_POINT_PATCH = 26,
    D3D11_PRIMITIVE_20_CONTROL_POINT_PATCH = 27,
    D3D11_PRIMITIVE_21_CONTROL_POINT_PATCH = 28,
    D3D11_PRIMITIVE_22_CONTROL_POINT_PATCH = 29,
    D3D11_PRIMITIVE_23_CONTROL_POINT_PATCH = 30,
    D3D11_PRIMITIVE_24_CONTROL_POINT_PATCH = 31,
    D3D11_PRIMITIVE_25_CONTROL_POINT_PATCH = 32,
    D3D11_PRIMITIVE_26_CONTROL_POINT_PATCH = 33,
    D3D11_PRIMITIVE_27_CONTROL_POINT_PATCH = 34,
    D3D11_PRIMITIVE_28_CONTROL_POINT_PATCH = 35,
    D3D11_PRIMITIVE_29_CONTROL_POINT_PATCH = 36,
    D3D11_PRIMITIVE_30_CONTROL_POINT_PATCH = 37,
    D3D11_PRIMITIVE_31_CONTROL_POINT_PATCH = 38,
    D3D11_PRIMITIVE_32_CONTROL_POINT_PATCH = 39,
}

enum D3D_SRV_DIMENSION {
    D3D_SRV_DIMENSION_UNKNOWN = 0,
    D3D_SRV_DIMENSION_BUFFER = 1,
    D3D_SRV_DIMENSION_TEXTURE1D = 2,
    D3D_SRV_DIMENSION_TEXTURE1DARRAY = 3,
    D3D_SRV_DIMENSION_TEXTURE2D = 4,
    D3D_SRV_DIMENSION_TEXTURE2DARRAY = 5,
    D3D_SRV_DIMENSION_TEXTURE2DMS = 6,
    D3D_SRV_DIMENSION_TEXTURE2DMSARRAY = 7,
    D3D_SRV_DIMENSION_TEXTURE3D = 8,
    D3D_SRV_DIMENSION_TEXTURECUBE = 9,
    D3D_SRV_DIMENSION_TEXTURECUBEARRAY = 10,
    D3D_SRV_DIMENSION_BUFFEREX = 11,
    D3D10_SRV_DIMENSION_UNKNOWN = 0,
    D3D10_SRV_DIMENSION_BUFFER = 1,
    D3D10_SRV_DIMENSION_TEXTURE1D = 2,
    D3D10_SRV_DIMENSION_TEXTURE1DARRAY = 3,
    D3D10_SRV_DIMENSION_TEXTURE2D = 4,
    D3D10_SRV_DIMENSION_TEXTURE2DARRAY = 5,
    D3D10_SRV_DIMENSION_TEXTURE2DMS = 6,
    D3D10_SRV_DIMENSION_TEXTURE2DMSARRAY = 7,
    D3D10_SRV_DIMENSION_TEXTURE3D = 8,
    D3D10_SRV_DIMENSION_TEXTURECUBE = 9,
    D3D10_1_SRV_DIMENSION_UNKNOWN = 0,
    D3D10_1_SRV_DIMENSION_BUFFER = 1,
    D3D10_1_SRV_DIMENSION_TEXTURE1D = 2,
    D3D10_1_SRV_DIMENSION_TEXTURE1DARRAY = 3,
    D3D10_1_SRV_DIMENSION_TEXTURE2D = 4,
    D3D10_1_SRV_DIMENSION_TEXTURE2DARRAY = 5,
    D3D10_1_SRV_DIMENSION_TEXTURE2DMS = 6,
    D3D10_1_SRV_DIMENSION_TEXTURE2DMSARRAY = 7,
    D3D10_1_SRV_DIMENSION_TEXTURE3D = 8,
    D3D10_1_SRV_DIMENSION_TEXTURECUBE = 9,
    D3D10_1_SRV_DIMENSION_TEXTURECUBEARRAY = 10,
    D3D11_SRV_DIMENSION_UNKNOWN = 0,
    D3D11_SRV_DIMENSION_BUFFER = 1,
    D3D11_SRV_DIMENSION_TEXTURE1D = 2,
    D3D11_SRV_DIMENSION_TEXTURE1DARRAY = 3,
    D3D11_SRV_DIMENSION_TEXTURE2D = 4,
    D3D11_SRV_DIMENSION_TEXTURE2DARRAY = 5,
    D3D11_SRV_DIMENSION_TEXTURE2DMS = 6,
    D3D11_SRV_DIMENSION_TEXTURE2DMSARRAY = 7,
    D3D11_SRV_DIMENSION_TEXTURE3D = 8,
    D3D11_SRV_DIMENSION_TEXTURECUBE = 9,
    D3D11_SRV_DIMENSION_TEXTURECUBEARRAY = 10,
    D3D11_SRV_DIMENSION_BUFFEREX = 11,
}

enum _D3D_INCLUDE_TYPE {
    D3D_INCLUDE_LOCAL = 0,
    D3D_INCLUDE_SYSTEM = 1,
    D3D10_INCLUDE_LOCAL = 0,
    D3D10_INCLUDE_SYSTEM = 1,
    D3D_INCLUDE_FORCE_DWORD = 2147483647,
}

enum _D3D_SHADER_VARIABLE_CLASS {
    D3D_SVC_SCALAR = 0,
    D3D_SVC_VECTOR = 1,
    D3D_SVC_MATRIX_ROWS = 2,
    D3D_SVC_MATRIX_COLUMNS = 3,
    D3D_SVC_OBJECT = 4,
    D3D_SVC_STRUCT = 5,
    D3D_SVC_INTERFACE_CLASS = 6,
    D3D_SVC_INTERFACE_POINTER = 7,
    D3D10_SVC_SCALAR = 0,
    D3D10_SVC_VECTOR = 1,
    D3D10_SVC_MATRIX_ROWS = 2,
    D3D10_SVC_MATRIX_COLUMNS = 3,
    D3D10_SVC_OBJECT = 4,
    D3D10_SVC_STRUCT = 5,
    D3D11_SVC_INTERFACE_CLASS = 6,
    D3D11_SVC_INTERFACE_POINTER = 7,
    D3D_SVC_FORCE_DWORD = 2147483647,
}

enum _D3D_SHADER_VARIABLE_FLAGS {
    D3D_SVF_USERPACKED = 1,
    D3D_SVF_USED = 2,
    D3D_SVF_INTERFACE_POINTER = 4,
    D3D_SVF_INTERFACE_PARAMETER = 8,
    D3D10_SVF_USERPACKED = 1,
    D3D10_SVF_USED = 2,
    D3D11_SVF_INTERFACE_POINTER = 4,
    D3D11_SVF_INTERFACE_PARAMETER = 8,
    D3D_SVF_FORCE_DWORD = 2147483647,
}

enum _D3D_SHADER_VARIABLE_TYPE {
    D3D_SVT_VOID = 0,
    D3D_SVT_BOOL = 1,
    D3D_SVT_INT = 2,
    D3D_SVT_FLOAT = 3,
    D3D_SVT_STRING = 4,
    D3D_SVT_TEXTURE = 5,
    D3D_SVT_TEXTURE1D = 6,
    D3D_SVT_TEXTURE2D = 7,
    D3D_SVT_TEXTURE3D = 8,
    D3D_SVT_TEXTURECUBE = 9,
    D3D_SVT_SAMPLER = 10,
    D3D_SVT_SAMPLER1D = 11,
    D3D_SVT_SAMPLER2D = 12,
    D3D_SVT_SAMPLER3D = 13,
    D3D_SVT_SAMPLERCUBE = 14,
    D3D_SVT_PIXELSHADER = 15,
    D3D_SVT_VERTEXSHADER = 16,
    D3D_SVT_PIXELFRAGMENT = 17,
    D3D_SVT_VERTEXFRAGMENT = 18,
    D3D_SVT_UINT = 19,
    D3D_SVT_UINT8 = 20,
    D3D_SVT_GEOMETRYSHADER = 21,
    D3D_SVT_RASTERIZER = 22,
    D3D_SVT_DEPTHSTENCIL = 23,
    D3D_SVT_BLEND = 24,
    D3D_SVT_BUFFER = 25,
    D3D_SVT_CBUFFER = 26,
    D3D_SVT_TBUFFER = 27,
    D3D_SVT_TEXTURE1DARRAY = 28,
    D3D_SVT_TEXTURE2DARRAY = 29,
    D3D_SVT_RENDERTARGETVIEW = 30,
    D3D_SVT_DEPTHSTENCILVIEW = 31,
    D3D_SVT_TEXTURE2DMS = 32,
    D3D_SVT_TEXTURE2DMSARRAY = 33,
    D3D_SVT_TEXTURECUBEARRAY = 34,
    D3D_SVT_HULLSHADER = 35,
    D3D_SVT_DOMAINSHADER = 36,
    D3D_SVT_INTERFACE_POINTER = 37,
    D3D_SVT_COMPUTESHADER = 38,
    D3D_SVT_DOUBLE = 39,
    D3D_SVT_RWTEXTURE1D = 40,
    D3D_SVT_RWTEXTURE1DARRAY = 41,
    D3D_SVT_RWTEXTURE2D = 42,
    D3D_SVT_RWTEXTURE2DARRAY = 43,
    D3D_SVT_RWTEXTURE3D = 44,
    D3D_SVT_RWBUFFER = 45,
    D3D_SVT_BYTEADDRESS_BUFFER = 46,
    D3D_SVT_RWBYTEADDRESS_BUFFER = 47,
    D3D_SVT_STRUCTURED_BUFFER = 48,
    D3D_SVT_RWSTRUCTURED_BUFFER = 49,
    D3D_SVT_APPEND_STRUCTURED_BUFFER = 50,
    D3D_SVT_CONSUME_STRUCTURED_BUFFER = 51,
    D3D_SVT_MIN8FLOAT = 52,
    D3D_SVT_MIN10FLOAT = 53,
    D3D_SVT_MIN16FLOAT = 54,
    D3D_SVT_MIN12INT = 55,
    D3D_SVT_MIN16INT = 56,
    D3D_SVT_MIN16UINT = 57,
    D3D10_SVT_VOID = 0,
    D3D10_SVT_BOOL = 1,
    D3D10_SVT_INT = 2,
    D3D10_SVT_FLOAT = 3,
    D3D10_SVT_STRING = 4,
    D3D10_SVT_TEXTURE = 5,
    D3D10_SVT_TEXTURE1D = 6,
    D3D10_SVT_TEXTURE2D = 7,
    D3D10_SVT_TEXTURE3D = 8,
    D3D10_SVT_TEXTURECUBE = 9,
    D3D10_SVT_SAMPLER = 10,
    D3D10_SVT_SAMPLER1D = 11,
    D3D10_SVT_SAMPLER2D = 12,
    D3D10_SVT_SAMPLER3D = 13,
    D3D10_SVT_SAMPLERCUBE = 14,
    D3D10_SVT_PIXELSHADER = 15,
    D3D10_SVT_VERTEXSHADER = 16,
    D3D10_SVT_PIXELFRAGMENT = 17,
    D3D10_SVT_VERTEXFRAGMENT = 18,
    D3D10_SVT_UINT = 19,
    D3D10_SVT_UINT8 = 20,
    D3D10_SVT_GEOMETRYSHADER = 21,
    D3D10_SVT_RASTERIZER = 22,
    D3D10_SVT_DEPTHSTENCIL = 23,
    D3D10_SVT_BLEND = 24,
    D3D10_SVT_BUFFER = 25,
    D3D10_SVT_CBUFFER = 26,
    D3D10_SVT_TBUFFER = 27,
    D3D10_SVT_TEXTURE1DARRAY = 28,
    D3D10_SVT_TEXTURE2DARRAY = 29,
    D3D10_SVT_RENDERTARGETVIEW = 30,
    D3D10_SVT_DEPTHSTENCILVIEW = 31,
    D3D10_SVT_TEXTURE2DMS = 32,
    D3D10_SVT_TEXTURE2DMSARRAY = 33,
    D3D10_SVT_TEXTURECUBEARRAY = 34,
    D3D11_SVT_HULLSHADER = 35,
    D3D11_SVT_DOMAINSHADER = 36,
    D3D11_SVT_INTERFACE_POINTER = 37,
    D3D11_SVT_COMPUTESHADER = 38,
    D3D11_SVT_DOUBLE = 39,
    D3D11_SVT_RWTEXTURE1D = 40,
    D3D11_SVT_RWTEXTURE1DARRAY = 41,
    D3D11_SVT_RWTEXTURE2D = 42,
    D3D11_SVT_RWTEXTURE2DARRAY = 43,
    D3D11_SVT_RWTEXTURE3D = 44,
    D3D11_SVT_RWBUFFER = 45,
    D3D11_SVT_BYTEADDRESS_BUFFER = 46,
    D3D11_SVT_RWBYTEADDRESS_BUFFER = 47,
    D3D11_SVT_STRUCTURED_BUFFER = 48,
    D3D11_SVT_RWSTRUCTURED_BUFFER = 49,
    D3D11_SVT_APPEND_STRUCTURED_BUFFER = 50,
    D3D11_SVT_CONSUME_STRUCTURED_BUFFER = 51,
    D3D_SVT_FORCE_DWORD = 2147483647,
}

enum _D3D_SHADER_INPUT_FLAGS {
    D3D_SIF_USERPACKED = 1,
    D3D_SIF_COMPARISON_SAMPLER = 2,
    D3D_SIF_TEXTURE_COMPONENT_0 = 4,
    D3D_SIF_TEXTURE_COMPONENT_1 = 8,
    D3D_SIF_TEXTURE_COMPONENTS = 12,
    D3D_SIF_UNUSED = 16,
    D3D10_SIF_USERPACKED = 1,
    D3D10_SIF_COMPARISON_SAMPLER = 2,
    D3D10_SIF_TEXTURE_COMPONENT_0 = 4,
    D3D10_SIF_TEXTURE_COMPONENT_1 = 8,
    D3D10_SIF_TEXTURE_COMPONENTS = 12,
    D3D_SIF_FORCE_DWORD = 2147483647,
}

enum _D3D_SHADER_INPUT_TYPE {
    D3D_SIT_CBUFFER = 0,
    D3D_SIT_TBUFFER = 1,
    D3D_SIT_TEXTURE = 2,
    D3D_SIT_SAMPLER = 3,
    D3D_SIT_UAV_RWTYPED = 4,
    D3D_SIT_STRUCTURED = 5,
    D3D_SIT_UAV_RWSTRUCTURED = 6,
    D3D_SIT_BYTEADDRESS = 7,
    D3D_SIT_UAV_RWBYTEADDRESS = 8,
    D3D_SIT_UAV_APPEND_STRUCTURED = 9,
    D3D_SIT_UAV_CONSUME_STRUCTURED = 10,
    D3D_SIT_UAV_RWSTRUCTURED_WITH_COUNTER = 11,
    D3D10_SIT_CBUFFER = 0,
    D3D10_SIT_TBUFFER = 1,
    D3D10_SIT_TEXTURE = 2,
    D3D10_SIT_SAMPLER = 3,
    D3D11_SIT_UAV_RWTYPED = 4,
    D3D11_SIT_STRUCTURED = 5,
    D3D11_SIT_UAV_RWSTRUCTURED = 6,
    D3D11_SIT_BYTEADDRESS = 7,
    D3D11_SIT_UAV_RWBYTEADDRESS = 8,
    D3D11_SIT_UAV_APPEND_STRUCTURED = 9,
    D3D11_SIT_UAV_CONSUME_STRUCTURED = 10,
    D3D11_SIT_UAV_RWSTRUCTURED_WITH_COUNTER = 11,
}

enum _D3D_SHADER_CBUFFER_FLAGS {
    D3D_CBF_USERPACKED = 1,
    D3D10_CBF_USERPACKED = 1,
    D3D_CBF_FORCE_DWORD = 2147483647,
}

enum _D3D_CBUFFER_TYPE {
    D3D_CT_CBUFFER = 0,
    D3D_CT_TBUFFER = 1,
    D3D_CT_INTERFACE_POINTERS = 2,
    D3D_CT_RESOURCE_BIND_INFO = 3,
    D3D10_CT_CBUFFER = 0,
    D3D10_CT_TBUFFER = 1,
    D3D11_CT_CBUFFER = 0,
    D3D11_CT_TBUFFER = 1,
    D3D11_CT_INTERFACE_POINTERS = 2,
    D3D11_CT_RESOURCE_BIND_INFO = 3,
}

enum D3D_NAME {
    D3D_NAME_UNDEFINED = 0,
    D3D_NAME_POSITION = 1,
    D3D_NAME_CLIP_DISTANCE = 2,
    D3D_NAME_CULL_DISTANCE = 3,
    D3D_NAME_RENDER_TARGET_ARRAY_INDEX = 4,
    D3D_NAME_VIEWPORT_ARRAY_INDEX = 5,
    D3D_NAME_VERTEX_ID = 6,
    D3D_NAME_PRIMITIVE_ID = 7,
    D3D_NAME_INSTANCE_ID = 8,
    D3D_NAME_IS_FRONT_FACE = 9,
    D3D_NAME_SAMPLE_INDEX = 10,
    D3D_NAME_FINAL_QUAD_EDGE_TESSFACTOR = 11,
    D3D_NAME_FINAL_QUAD_INSIDE_TESSFACTOR = 12,
    D3D_NAME_FINAL_TRI_EDGE_TESSFACTOR = 13,
    D3D_NAME_FINAL_TRI_INSIDE_TESSFACTOR = 14,
    D3D_NAME_FINAL_LINE_DETAIL_TESSFACTOR = 15,
    D3D_NAME_FINAL_LINE_DENSITY_TESSFACTOR = 16,
    D3D_NAME_BARYCENTRICS = 23,
    D3D_NAME_TARGET = 64,
    D3D_NAME_DEPTH = 65,
    D3D_NAME_COVERAGE = 66,
    D3D_NAME_DEPTH_GREATER_EQUAL = 67,
    D3D_NAME_DEPTH_LESS_EQUAL = 68,
    D3D_NAME_STENCIL_REF = 69,
    D3D_NAME_INNER_COVERAGE = 70,
    D3D10_NAME_UNDEFINED = 0,
    D3D10_NAME_POSITION = 1,
    D3D10_NAME_CLIP_DISTANCE = 2,
    D3D10_NAME_CULL_DISTANCE = 3,
    D3D10_NAME_RENDER_TARGET_ARRAY_INDEX = 4,
    D3D10_NAME_VIEWPORT_ARRAY_INDEX = 5,
    D3D10_NAME_VERTEX_ID = 6,
    D3D10_NAME_PRIMITIVE_ID = 7,
    D3D10_NAME_INSTANCE_ID = 8,
    D3D10_NAME_IS_FRONT_FACE = 9,
    D3D10_NAME_SAMPLE_INDEX = 10,
    D3D10_NAME_TARGET = 64,
    D3D10_NAME_DEPTH = 65,
    D3D10_NAME_COVERAGE = 66,
    D3D11_NAME_FINAL_QUAD_EDGE_TESSFACTOR = 11,
    D3D11_NAME_FINAL_QUAD_INSIDE_TESSFACTOR = 12,
    D3D11_NAME_FINAL_TRI_EDGE_TESSFACTOR = 13,
    D3D11_NAME_FINAL_TRI_INSIDE_TESSFACTOR = 14,
    D3D11_NAME_FINAL_LINE_DETAIL_TESSFACTOR = 15,
    D3D11_NAME_FINAL_LINE_DENSITY_TESSFACTOR = 16,
    D3D11_NAME_DEPTH_GREATER_EQUAL = 67,
    D3D11_NAME_DEPTH_LESS_EQUAL = 68,
    D3D11_NAME_STENCIL_REF = 69,
    D3D11_NAME_INNER_COVERAGE = 70,
    D3D12_NAME_BARYCENTRICS = 23,
}

enum D3D_RESOURCE_RETURN_TYPE {
    D3D_RETURN_TYPE_UNORM = 1,
    D3D_RETURN_TYPE_SNORM = 2,
    D3D_RETURN_TYPE_SINT = 3,
    D3D_RETURN_TYPE_UINT = 4,
    D3D_RETURN_TYPE_FLOAT = 5,
    D3D_RETURN_TYPE_MIXED = 6,
    D3D_RETURN_TYPE_DOUBLE = 7,
    D3D_RETURN_TYPE_CONTINUED = 8,
    D3D10_RETURN_TYPE_UNORM = 1,
    D3D10_RETURN_TYPE_SNORM = 2,
    D3D10_RETURN_TYPE_SINT = 3,
    D3D10_RETURN_TYPE_UINT = 4,
    D3D10_RETURN_TYPE_FLOAT = 5,
    D3D10_RETURN_TYPE_MIXED = 6,
    D3D11_RETURN_TYPE_UNORM = 1,
    D3D11_RETURN_TYPE_SNORM = 2,
    D3D11_RETURN_TYPE_SINT = 3,
    D3D11_RETURN_TYPE_UINT = 4,
    D3D11_RETURN_TYPE_FLOAT = 5,
    D3D11_RETURN_TYPE_MIXED = 6,
    D3D11_RETURN_TYPE_DOUBLE = 7,
    D3D11_RETURN_TYPE_CONTINUED = 8,
}

enum D3D_REGISTER_COMPONENT_TYPE {
    D3D_REGISTER_COMPONENT_UNKNOWN = 0,
    D3D_REGISTER_COMPONENT_UINT32 = 1,
    D3D_REGISTER_COMPONENT_SINT32 = 2,
    D3D_REGISTER_COMPONENT_FLOAT32 = 3,
    D3D10_REGISTER_COMPONENT_UNKNOWN = 0,
    D3D10_REGISTER_COMPONENT_UINT32 = 1,
    D3D10_REGISTER_COMPONENT_SINT32 = 2,
    D3D10_REGISTER_COMPONENT_FLOAT32 = 3,
}

enum D3D_TESSELLATOR_DOMAIN {
    D3D_TESSELLATOR_DOMAIN_UNDEFINED = 0,
    D3D_TESSELLATOR_DOMAIN_ISOLINE = 1,
    D3D_TESSELLATOR_DOMAIN_TRI = 2,
    D3D_TESSELLATOR_DOMAIN_QUAD = 3,
    D3D11_TESSELLATOR_DOMAIN_UNDEFINED = 0,
    D3D11_TESSELLATOR_DOMAIN_ISOLINE = 1,
    D3D11_TESSELLATOR_DOMAIN_TRI = 2,
    D3D11_TESSELLATOR_DOMAIN_QUAD = 3,
}

enum D3D_TESSELLATOR_PARTITIONING {
    D3D_TESSELLATOR_PARTITIONING_UNDEFINED = 0,
    D3D_TESSELLATOR_PARTITIONING_INTEGER = 1,
    D3D_TESSELLATOR_PARTITIONING_POW2 = 2,
    D3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD = 3,
    D3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN = 4,
    D3D11_TESSELLATOR_PARTITIONING_UNDEFINED = 0,
    D3D11_TESSELLATOR_PARTITIONING_INTEGER = 1,
    D3D11_TESSELLATOR_PARTITIONING_POW2 = 2,
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD = 3,
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN = 4,
}

enum D3D_TESSELLATOR_OUTPUT_PRIMITIVE {
    D3D_TESSELLATOR_OUTPUT_UNDEFINED = 0,
    D3D_TESSELLATOR_OUTPUT_POINT = 1,
    D3D_TESSELLATOR_OUTPUT_LINE = 2,
    D3D_TESSELLATOR_OUTPUT_TRIANGLE_CW = 3,
    D3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW = 4,
    D3D11_TESSELLATOR_OUTPUT_UNDEFINED = 0,
    D3D11_TESSELLATOR_OUTPUT_POINT = 1,
    D3D11_TESSELLATOR_OUTPUT_LINE = 2,
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CW = 3,
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CCW = 4,
}

enum D3D_MIN_PRECISION {
    D3D_MIN_PRECISION_DEFAULT = 0,
    D3D_MIN_PRECISION_FLOAT_16 = 1,
    D3D_MIN_PRECISION_FLOAT_2_8 = 2,
    D3D_MIN_PRECISION_RESERVED = 3,
    D3D_MIN_PRECISION_SINT_16 = 4,
    D3D_MIN_PRECISION_UINT_16 = 5,
    D3D_MIN_PRECISION_ANY_16 = 240,
    D3D_MIN_PRECISION_ANY_10 = 241,
}

enum D3D_INTERPOLATION_MODE {
    D3D_INTERPOLATION_UNDEFINED = 0,
    D3D_INTERPOLATION_CONSTANT = 1,
    D3D_INTERPOLATION_LINEAR = 2,
    D3D_INTERPOLATION_LINEAR_CENTROID = 3,
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE = 4,
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE_CENTROID = 5,
    D3D_INTERPOLATION_LINEAR_SAMPLE = 6,
    D3D_INTERPOLATION_LINEAR_NOPERSPECTIVE_SAMPLE = 7,
}

enum _D3D_PARAMETER_FLAGS {
    D3D_PF_NONE = 0,
    D3D_PF_IN = 1,
    D3D_PF_OUT = 2,
    D3D_PF_FORCE_DWORD = 2147483647,
}

struct _D3D_SHADER_MACRO {
    LPCSTR Name;
    LPCSTR Definition;
}

interface ID3D10Blob: IUnknown {
    static immutable uuidof = GUID( 0x8ba5fb08,  0x5195,  0x40e2, [ 0xac,  0x58,  0xd,  0x98,  0x9c,  0x3a,  0x1,  0x2]);
    LPVOID GetBufferPointer();
    SIZE_T GetBufferSize();
}

interface ID3DDestructionNotifier: IUnknown {
    
    HRESULT RegisterDestructionCallback(PFN_DESTRUCTION_CALLBACK callbackFn, void * pData, UINT * pCallbackID);
    HRESULT UnregisterDestructionCallback(UINT callbackID);
}

interface ID3DInclude: IUnknown {
    
    HRESULT Open(D3D_INCLUDE_TYPE IncludeType, LPCSTR pFileName, LPCVOID pParentData, LPCVOID * ppData, UINT * pBytes);
    HRESULT Close(LPCVOID pData);
}

}