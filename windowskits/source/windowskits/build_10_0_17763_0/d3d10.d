// this is generated
module windowskits.build_10_0_17763_0.d3d10;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgi;
public import windowskits.build_10_0_17763_0.d3dcommon;

extern(Windows){

alias IID = GUID;
alias D3D10_PRIMITIVE_TOPOLOGY = D3D_PRIMITIVE_TOPOLOGY;
alias D3D10_PRIMITIVE = D3D_PRIMITIVE;
alias D3D10_SRV_DIMENSION = D3D_SRV_DIMENSION;
alias D3D10_RECT = RECT;
immutable D3D10_16BIT_INDEX_STRIP_CUT_VALUE = ( 0xffff );
immutable D3D10_32BIT_INDEX_STRIP_CUT_VALUE = ( 0xffffffff );
immutable D3D10_8BIT_INDEX_STRIP_CUT_VALUE = ( 0xff );
immutable D3D10_ARRAY_AXIS_ADDRESS_RANGE_BIT_COUNT = ( 9 );
immutable D3D10_CLIP_OR_CULL_DISTANCE_COUNT = ( 8 );
immutable D3D10_CLIP_OR_CULL_DISTANCE_ELEMENT_COUNT = ( 2 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT = ( 14 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_COMPONENTS = ( 4 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_HW_SLOT_COUNT = ( 15 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COUNT = ( 15 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READS_PER_INST = ( 1 );
immutable D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_COMMONSHADER_FLOWCONTROL_NESTING_LIMIT = ( 64 );
immutable D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COUNT = ( 1 );
immutable D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READS_PER_INST = ( 1 );
immutable D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_COMMONSHADER_IMMEDIATE_VALUE_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_COMPONENTS = ( 1 );
immutable D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_COUNT = ( 128 );
immutable D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_READS_PER_INST = ( 1 );
immutable D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT = ( 128 );
immutable D3D10_COMMONSHADER_SAMPLER_REGISTER_COMPONENTS = ( 1 );
immutable D3D10_COMMONSHADER_SAMPLER_REGISTER_COUNT = ( 16 );
immutable D3D10_COMMONSHADER_SAMPLER_REGISTER_READS_PER_INST = ( 1 );
immutable D3D10_COMMONSHADER_SAMPLER_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT = ( 16 );
immutable D3D10_COMMONSHADER_SUBROUTINE_NESTING_LIMIT = ( 32 );
immutable D3D10_COMMONSHADER_TEMP_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_COMMONSHADER_TEMP_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_COMMONSHADER_TEMP_REGISTER_COUNT = ( 4096 );
immutable D3D10_COMMONSHADER_TEMP_REGISTER_READS_PER_INST = ( 3 );
immutable D3D10_COMMONSHADER_TEMP_REGISTER_READ_PORTS = ( 3 );
immutable D3D10_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MAX = ( 10 );
immutable D3D10_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MIN = ( -10 );
immutable D3D10_COMMONSHADER_TEXEL_OFFSET_MAX_NEGATIVE = ( -8 );
immutable D3D10_COMMONSHADER_TEXEL_OFFSET_MAX_POSITIVE = ( 7 );
immutable D3D10_DEFAULT_BLEND_FACTOR_ALPHA = ( 1.0f );
immutable D3D10_DEFAULT_BLEND_FACTOR_BLUE = ( 1.0f );
immutable D3D10_DEFAULT_BLEND_FACTOR_GREEN = ( 1.0f );
immutable D3D10_DEFAULT_BLEND_FACTOR_RED = ( 1.0f );
immutable D3D10_DEFAULT_BORDER_COLOR_COMPONENT = ( 0.0f );
immutable D3D10_DEFAULT_DEPTH_BIAS = ( 0 );
immutable D3D10_DEFAULT_DEPTH_BIAS_CLAMP = ( 0.0f );
immutable D3D10_DEFAULT_MAX_ANISOTROPY = ( 16.0f );
immutable D3D10_DEFAULT_MIP_LOD_BIAS = ( 0.0f );
immutable D3D10_DEFAULT_RENDER_TARGET_ARRAY_INDEX = ( 0 );
immutable D3D10_DEFAULT_SAMPLE_MASK = ( 0xffffffff );
immutable D3D10_DEFAULT_SCISSOR_ENDX = ( 0 );
immutable D3D10_DEFAULT_SCISSOR_ENDY = ( 0 );
immutable D3D10_DEFAULT_SCISSOR_STARTX = ( 0 );
immutable D3D10_DEFAULT_SCISSOR_STARTY = ( 0 );
immutable D3D10_DEFAULT_SLOPE_SCALED_DEPTH_BIAS = ( 0.0f );
immutable D3D10_DEFAULT_STENCIL_READ_MASK = ( 0xff );
immutable D3D10_DEFAULT_STENCIL_REFERENCE = ( 0 );
immutable D3D10_DEFAULT_STENCIL_WRITE_MASK = ( 0xff );
immutable D3D10_DEFAULT_VIEWPORT_AND_SCISSORRECT_INDEX = ( 0 );
immutable D3D10_DEFAULT_VIEWPORT_HEIGHT = ( 0 );
immutable D3D10_DEFAULT_VIEWPORT_MAX_DEPTH = ( 0.0f );
immutable D3D10_DEFAULT_VIEWPORT_MIN_DEPTH = ( 0.0f );
immutable D3D10_DEFAULT_VIEWPORT_TOPLEFTX = ( 0 );
immutable D3D10_DEFAULT_VIEWPORT_TOPLEFTY = ( 0 );
immutable D3D10_DEFAULT_VIEWPORT_WIDTH = ( 0 );
immutable D3D10_FLOAT16_FUSED_TOLERANCE_IN_ULP = ( 0.6 );
immutable D3D10_FLOAT32_MAX = ( 3.402823466e+38f );
immutable D3D10_FLOAT32_TO_INTEGER_TOLERANCE_IN_ULP = ( 0.6f );
immutable D3D10_FLOAT_TO_SRGB_EXPONENT_DENOMINATOR = ( 2.4f );
immutable D3D10_FLOAT_TO_SRGB_EXPONENT_NUMERATOR = ( 1.0f );
immutable D3D10_FLOAT_TO_SRGB_OFFSET = ( 0.055f );
immutable D3D10_FLOAT_TO_SRGB_SCALE_1 = ( 12.92f );
immutable D3D10_FLOAT_TO_SRGB_SCALE_2 = ( 1.055f );
immutable D3D10_FLOAT_TO_SRGB_THRESHOLD = ( 0.0031308f );
immutable D3D10_FTOI_INSTRUCTION_MAX_INPUT = ( 2147483647.999f );
immutable D3D10_FTOI_INSTRUCTION_MIN_INPUT = ( -2147483648.999f );
immutable D3D10_FTOU_INSTRUCTION_MAX_INPUT = ( 4294967295.999f );
immutable D3D10_FTOU_INSTRUCTION_MIN_INPUT = ( 0.0f );
immutable D3D10_GS_INPUT_PRIM_CONST_REGISTER_COMPONENTS = ( 1 );
immutable D3D10_GS_INPUT_PRIM_CONST_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_GS_INPUT_PRIM_CONST_REGISTER_COUNT = ( 1 );
immutable D3D10_GS_INPUT_PRIM_CONST_REGISTER_READS_PER_INST = ( 2 );
immutable D3D10_GS_INPUT_PRIM_CONST_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_GS_INPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_GS_INPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_GS_INPUT_REGISTER_COUNT = ( 16 );
immutable D3D10_GS_INPUT_REGISTER_READS_PER_INST = ( 2 );
immutable D3D10_GS_INPUT_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_GS_INPUT_REGISTER_VERTICES = ( 6 );
immutable D3D10_GS_OUTPUT_ELEMENTS = ( 32 );
immutable D3D10_GS_OUTPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_GS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_GS_OUTPUT_REGISTER_COUNT = ( 32 );
immutable D3D10_IA_DEFAULT_INDEX_BUFFER_OFFSET_IN_BYTES = ( 0 );
immutable D3D10_IA_DEFAULT_PRIMITIVE_TOPOLOGY = ( 0 );
immutable D3D10_IA_DEFAULT_VERTEX_BUFFER_OFFSET_IN_BYTES = ( 0 );
immutable D3D10_IA_INDEX_INPUT_RESOURCE_SLOT_COUNT = ( 1 );
immutable D3D10_IA_INSTANCE_ID_BIT_COUNT = ( 32 );
immutable D3D10_IA_INTEGER_ARITHMETIC_BIT_COUNT = ( 32 );
immutable D3D10_IA_PRIMITIVE_ID_BIT_COUNT = ( 32 );
immutable D3D10_IA_VERTEX_ID_BIT_COUNT = ( 32 );
immutable D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT = ( 16 );
immutable D3D10_IA_VERTEX_INPUT_STRUCTURE_ELEMENTS_COMPONENTS = ( 64 );
immutable D3D10_IA_VERTEX_INPUT_STRUCTURE_ELEMENT_COUNT = ( 16 );
immutable D3D10_INTEGER_DIVIDE_BY_ZERO_QUOTIENT = ( 0xffffffff );
immutable D3D10_INTEGER_DIVIDE_BY_ZERO_REMAINDER = ( 0xffffffff );
immutable D3D10_LINEAR_GAMMA = ( 1.0f );
immutable D3D10_MAX_BORDER_COLOR_COMPONENT = ( 1.0f );
immutable D3D10_MAX_DEPTH = ( 1.0f );
immutable D3D10_MAX_MAXANISOTROPY = ( 16 );
immutable D3D10_MAX_MULTISAMPLE_SAMPLE_COUNT = ( 32 );
immutable D3D10_MAX_POSITION_VALUE = ( 3.402823466e+34f );
immutable D3D10_MAX_TEXTURE_DIMENSION_2_TO_EXP = ( 17 );
immutable D3D10_MIN_BORDER_COLOR_COMPONENT = ( 0.0f );
immutable D3D10_MIN_DEPTH = ( 0.0f );
immutable D3D10_MIN_MAXANISOTROPY = ( 0 );
immutable D3D10_MIP_LOD_BIAS_MAX = ( 15.99f );
immutable D3D10_MIP_LOD_BIAS_MIN = ( -16.0f );
immutable D3D10_MIP_LOD_FRACTIONAL_BIT_COUNT = ( 6 );
immutable D3D10_MIP_LOD_RANGE_BIT_COUNT = ( 8 );
immutable D3D10_MULTISAMPLE_ANTIALIAS_LINE_WIDTH = ( 1.4f );
immutable D3D10_NONSAMPLE_FETCH_OUT_OF_RANGE_ACCESS_RESULT = ( 0 );
immutable D3D10_PIXEL_ADDRESS_RANGE_BIT_COUNT = ( 13 );
immutable D3D10_PRE_SCISSOR_PIXEL_ADDRESS_RANGE_BIT_COUNT = ( 15 );
immutable D3D10_PS_FRONTFACING_DEFAULT_VALUE = ( 0xffffffff );
immutable D3D10_PS_FRONTFACING_FALSE_VALUE = ( 0 );
immutable D3D10_PS_FRONTFACING_TRUE_VALUE = ( 0xffffffff );
immutable D3D10_PS_INPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_PS_INPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_PS_INPUT_REGISTER_COUNT = ( 32 );
immutable D3D10_PS_INPUT_REGISTER_READS_PER_INST = ( 2 );
immutable D3D10_PS_INPUT_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_PS_LEGACY_PIXEL_CENTER_FRACTIONAL_COMPONENT = ( 0.0f );
immutable D3D10_PS_OUTPUT_DEPTH_REGISTER_COMPONENTS = ( 1 );
immutable D3D10_PS_OUTPUT_DEPTH_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_PS_OUTPUT_DEPTH_REGISTER_COUNT = ( 1 );
immutable D3D10_PS_OUTPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_PS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_PS_OUTPUT_REGISTER_COUNT = ( 8 );
immutable D3D10_PS_PIXEL_CENTER_FRACTIONAL_COMPONENT = ( 0.5f );
immutable D3D10_REQ_BLEND_OBJECT_COUNT_PER_CONTEXT = ( 4096 );
immutable D3D10_REQ_BUFFER_RESOURCE_TEXEL_COUNT_2_TO_EXP = ( 27 );
immutable D3D10_REQ_CONSTANT_BUFFER_ELEMENT_COUNT = ( 4096 );
immutable D3D10_REQ_DEPTH_STENCIL_OBJECT_COUNT_PER_CONTEXT = ( 4096 );
immutable D3D10_REQ_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = ( 32 );
immutable D3D10_REQ_DRAW_VERTEX_COUNT_2_TO_EXP = ( 32 );
immutable D3D10_REQ_FILTERING_HW_ADDRESSABLE_RESOURCE_DIMENSION = ( 8192 );
immutable D3D10_REQ_GS_INVOCATION_32BIT_OUTPUT_COMPONENT_LIMIT = ( 1024 );
immutable D3D10_REQ_IMMEDIATE_CONSTANT_BUFFER_ELEMENT_COUNT = ( 4096 );
immutable D3D10_REQ_MAXANISOTROPY = ( 16 );
immutable D3D10_REQ_MIP_LEVELS = ( 14 );
immutable D3D10_REQ_MULTI_ELEMENT_STRUCTURE_SIZE_IN_BYTES = ( 2048 );
immutable D3D10_REQ_RASTERIZER_OBJECT_COUNT_PER_CONTEXT = ( 4096 );
immutable D3D10_REQ_RENDER_TO_BUFFER_WINDOW_WIDTH = ( 8192 );
immutable D3D10_REQ_RESOURCE_SIZE_IN_MEGABYTES = ( 128 );
immutable D3D10_REQ_RESOURCE_VIEW_COUNT_PER_CONTEXT_2_TO_EXP = ( 20 );
immutable D3D10_REQ_SAMPLER_OBJECT_COUNT_PER_CONTEXT = ( 4096 );
immutable D3D10_REQ_TEXTURE1D_ARRAY_AXIS_DIMENSION = ( 512 );
immutable D3D10_REQ_TEXTURE1D_U_DIMENSION = ( 8192 );
immutable D3D10_REQ_TEXTURE2D_ARRAY_AXIS_DIMENSION = ( 512 );
immutable D3D10_REQ_TEXTURE2D_U_OR_V_DIMENSION = ( 8192 );
immutable D3D10_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = ( 2048 );
immutable D3D10_REQ_TEXTURECUBE_DIMENSION = ( 8192 );
immutable D3D10_RESINFO_INSTRUCTION_MISSING_COMPONENT_RETVAL = ( 0 );
immutable D3D10_SHADER_MAJOR_VERSION = ( 4 );
immutable D3D10_SHADER_MINOR_VERSION = ( 0 );
immutable D3D10_SHIFT_INSTRUCTION_PAD_VALUE = ( 0 );
immutable D3D10_SHIFT_INSTRUCTION_SHIFT_VALUE_BIT_COUNT = ( 5 );
immutable D3D10_SIMULTANEOUS_RENDER_TARGET_COUNT = ( 8 );
immutable D3D10_SO_BUFFER_MAX_STRIDE_IN_BYTES = ( 2048 );
immutable D3D10_SO_BUFFER_MAX_WRITE_WINDOW_IN_BYTES = ( 256 );
immutable D3D10_SO_BUFFER_SLOT_COUNT = ( 4 );
immutable D3D10_SO_DDI_REGISTER_INDEX_DENOTING_GAP = ( 0xffffffff );
immutable D3D10_SO_MULTIPLE_BUFFER_ELEMENTS_PER_BUFFER = ( 1 );
immutable D3D10_SO_SINGLE_BUFFER_COMPONENT_LIMIT = ( 64 );
immutable D3D10_SRGB_GAMMA = ( 2.2f );
immutable D3D10_SRGB_TO_FLOAT_DENOMINATOR_1 = ( 12.92f );
immutable D3D10_SRGB_TO_FLOAT_DENOMINATOR_2 = ( 1.055f );
immutable D3D10_SRGB_TO_FLOAT_EXPONENT = ( 2.4f );
immutable D3D10_SRGB_TO_FLOAT_OFFSET = ( 0.055f );
immutable D3D10_SRGB_TO_FLOAT_THRESHOLD = ( 0.04045f );
immutable D3D10_SRGB_TO_FLOAT_TOLERANCE_IN_ULP = ( 0.5f );
immutable D3D10_STANDARD_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_STANDARD_COMPONENT_BIT_COUNT_DOUBLED = ( 64 );
immutable D3D10_STANDARD_MAXIMUM_ELEMENT_ALIGNMENT_BYTE_MULTIPLE = ( 4 );
immutable D3D10_STANDARD_PIXEL_COMPONENT_COUNT = ( 128 );
immutable D3D10_STANDARD_PIXEL_ELEMENT_COUNT = ( 32 );
immutable D3D10_STANDARD_VECTOR_SIZE = ( 4 );
immutable D3D10_STANDARD_VERTEX_ELEMENT_COUNT = ( 16 );
immutable D3D10_STANDARD_VERTEX_TOTAL_COMPONENT_COUNT = ( 64 );
immutable D3D10_SUBPIXEL_FRACTIONAL_BIT_COUNT = ( 8 );
immutable D3D10_SUBTEXEL_FRACTIONAL_BIT_COUNT = ( 6 );
immutable D3D10_TEXEL_ADDRESS_RANGE_BIT_COUNT = ( 18 );
immutable D3D10_UNBOUND_MEMORY_ACCESS_RESULT = ( 0 );
immutable D3D10_VIEWPORT_AND_SCISSORRECT_MAX_INDEX = ( 15 );
immutable D3D10_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE = ( 16 );
immutable D3D10_VIEWPORT_BOUNDS_MAX = ( 16383 );
immutable D3D10_VIEWPORT_BOUNDS_MIN = ( -16384 );
immutable D3D10_VS_INPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_VS_INPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_VS_INPUT_REGISTER_COUNT = ( 16 );
immutable D3D10_VS_INPUT_REGISTER_READS_PER_INST = ( 2 );
immutable D3D10_VS_INPUT_REGISTER_READ_PORTS = ( 1 );
immutable D3D10_VS_OUTPUT_REGISTER_COMPONENTS = ( 4 );
immutable D3D10_VS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = ( 32 );
immutable D3D10_VS_OUTPUT_REGISTER_COUNT = ( 16 );
immutable D3D10_WHQL_CONTEXT_COUNT_FOR_RESOURCE_LIMIT = ( 10 );
immutable D3D10_WHQL_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = ( 25 );
immutable D3D10_WHQL_DRAW_VERTEX_COUNT_2_TO_EXP = ( 25 );
immutable D3D_MAJOR_VERSION = ( 10 );
immutable D3D_MINOR_VERSION = ( 0 );
immutable D3D_SPEC_DATE_DAY = ( 8 );
immutable D3D_SPEC_DATE_MONTH = ( 8 );
immutable D3D_SPEC_DATE_YEAR = ( 2006 );
immutable D3D_SPEC_VERSION = ( 1.050005 );
immutable _FACD3D10 = ( 0x879 );
immutable _FACD3D10DEBUG = ( ( _FACD3D10 + 1 )  );
immutable D3D10_APPEND_ALIGNED_ELEMENT = ( 0xffffffff );
immutable D3D10_FILTER_TYPE_MASK = ( 0x3 );
immutable D3D10_MIN_FILTER_SHIFT = ( 4 );
immutable D3D10_MAG_FILTER_SHIFT = ( 2 );
immutable D3D10_MIP_FILTER_SHIFT = ( 0 );
immutable D3D10_COMPARISON_FILTERING_BIT = ( 0x80 );
immutable D3D10_ANISOTROPIC_FILTERING_BIT = ( 0x40 );
immutable D3D10_TEXT_1BIT_BIT = ( 0x80000000 );
immutable D3D10_SDK_VERSION = ( 29 );

enum D3D10_INPUT_CLASSIFICATION {
    D3D10_INPUT_PER_VERTEX_DATA = 0,
    D3D10_INPUT_PER_INSTANCE_DATA = 1,
}

enum D3D10_FILL_MODE {
    D3D10_FILL_WIREFRAME = 2,
    D3D10_FILL_SOLID = 3,
}

enum D3D10_CULL_MODE {
    D3D10_CULL_NONE = 1,
    D3D10_CULL_FRONT = 2,
    D3D10_CULL_BACK = 3,
}

enum D3D10_RESOURCE_DIMENSION {
    D3D10_RESOURCE_DIMENSION_UNKNOWN = 0,
    D3D10_RESOURCE_DIMENSION_BUFFER = 1,
    D3D10_RESOURCE_DIMENSION_TEXTURE1D = 2,
    D3D10_RESOURCE_DIMENSION_TEXTURE2D = 3,
    D3D10_RESOURCE_DIMENSION_TEXTURE3D = 4,
}

enum D3D10_DSV_DIMENSION {
    D3D10_DSV_DIMENSION_UNKNOWN = 0,
    D3D10_DSV_DIMENSION_TEXTURE1D = 1,
    D3D10_DSV_DIMENSION_TEXTURE1DARRAY = 2,
    D3D10_DSV_DIMENSION_TEXTURE2D = 3,
    D3D10_DSV_DIMENSION_TEXTURE2DARRAY = 4,
    D3D10_DSV_DIMENSION_TEXTURE2DMS = 5,
    D3D10_DSV_DIMENSION_TEXTURE2DMSARRAY = 6,
}

enum D3D10_RTV_DIMENSION {
    D3D10_RTV_DIMENSION_UNKNOWN = 0,
    D3D10_RTV_DIMENSION_BUFFER = 1,
    D3D10_RTV_DIMENSION_TEXTURE1D = 2,
    D3D10_RTV_DIMENSION_TEXTURE1DARRAY = 3,
    D3D10_RTV_DIMENSION_TEXTURE2D = 4,
    D3D10_RTV_DIMENSION_TEXTURE2DARRAY = 5,
    D3D10_RTV_DIMENSION_TEXTURE2DMS = 6,
    D3D10_RTV_DIMENSION_TEXTURE2DMSARRAY = 7,
    D3D10_RTV_DIMENSION_TEXTURE3D = 8,
}

enum D3D10_USAGE {
    D3D10_USAGE_DEFAULT = 0,
    D3D10_USAGE_IMMUTABLE = 1,
    D3D10_USAGE_DYNAMIC = 2,
    D3D10_USAGE_STAGING = 3,
}

enum D3D10_BIND_FLAG {
    D3D10_BIND_VERTEX_BUFFER = 1,
    D3D10_BIND_INDEX_BUFFER = 2,
    D3D10_BIND_CONSTANT_BUFFER = 4,
    D3D10_BIND_SHADER_RESOURCE = 8,
    D3D10_BIND_STREAM_OUTPUT = 16,
    D3D10_BIND_RENDER_TARGET = 32,
    D3D10_BIND_DEPTH_STENCIL = 64,
}

enum D3D10_CPU_ACCESS_FLAG {
    D3D10_CPU_ACCESS_WRITE = 65536,
    D3D10_CPU_ACCESS_READ = 131072,
}

enum D3D10_RESOURCE_MISC_FLAG {
    D3D10_RESOURCE_MISC_GENERATE_MIPS = 1,
    D3D10_RESOURCE_MISC_SHARED = 2,
    D3D10_RESOURCE_MISC_TEXTURECUBE = 4,
    D3D10_RESOURCE_MISC_SHARED_KEYEDMUTEX = 16,
    D3D10_RESOURCE_MISC_GDI_COMPATIBLE = 32,
}

enum D3D10_MAP {
    D3D10_MAP_READ = 1,
    D3D10_MAP_WRITE = 2,
    D3D10_MAP_READ_WRITE = 3,
    D3D10_MAP_WRITE_DISCARD = 4,
    D3D10_MAP_WRITE_NO_OVERWRITE = 5,
}

enum D3D10_MAP_FLAG {
    D3D10_MAP_FLAG_DO_NOT_WAIT = 1048576,
}

enum D3D10_RAISE_FLAG {
    D3D10_RAISE_FLAG_DRIVER_INTERNAL_ERROR = 1,
}

enum D3D10_CLEAR_FLAG {
    D3D10_CLEAR_DEPTH = 1,
    D3D10_CLEAR_STENCIL = 2,
}

enum D3D10_COMPARISON_FUNC {
    D3D10_COMPARISON_NEVER = 1,
    D3D10_COMPARISON_LESS = 2,
    D3D10_COMPARISON_EQUAL = 3,
    D3D10_COMPARISON_LESS_EQUAL = 4,
    D3D10_COMPARISON_GREATER = 5,
    D3D10_COMPARISON_NOT_EQUAL = 6,
    D3D10_COMPARISON_GREATER_EQUAL = 7,
    D3D10_COMPARISON_ALWAYS = 8,
}

enum D3D10_DEPTH_WRITE_MASK {
    D3D10_DEPTH_WRITE_MASK_ZERO = 0,
    D3D10_DEPTH_WRITE_MASK_ALL = 1,
}

enum D3D10_STENCIL_OP {
    D3D10_STENCIL_OP_KEEP = 1,
    D3D10_STENCIL_OP_ZERO = 2,
    D3D10_STENCIL_OP_REPLACE = 3,
    D3D10_STENCIL_OP_INCR_SAT = 4,
    D3D10_STENCIL_OP_DECR_SAT = 5,
    D3D10_STENCIL_OP_INVERT = 6,
    D3D10_STENCIL_OP_INCR = 7,
    D3D10_STENCIL_OP_DECR = 8,
}

enum D3D10_BLEND {
    D3D10_BLEND_ZERO = 1,
    D3D10_BLEND_ONE = 2,
    D3D10_BLEND_SRC_COLOR = 3,
    D3D10_BLEND_INV_SRC_COLOR = 4,
    D3D10_BLEND_SRC_ALPHA = 5,
    D3D10_BLEND_INV_SRC_ALPHA = 6,
    D3D10_BLEND_DEST_ALPHA = 7,
    D3D10_BLEND_INV_DEST_ALPHA = 8,
    D3D10_BLEND_DEST_COLOR = 9,
    D3D10_BLEND_INV_DEST_COLOR = 10,
    D3D10_BLEND_SRC_ALPHA_SAT = 11,
    D3D10_BLEND_BLEND_FACTOR = 14,
    D3D10_BLEND_INV_BLEND_FACTOR = 15,
    D3D10_BLEND_SRC1_COLOR = 16,
    D3D10_BLEND_INV_SRC1_COLOR = 17,
    D3D10_BLEND_SRC1_ALPHA = 18,
    D3D10_BLEND_INV_SRC1_ALPHA = 19,
}

enum D3D10_BLEND_OP {
    D3D10_BLEND_OP_ADD = 1,
    D3D10_BLEND_OP_SUBTRACT = 2,
    D3D10_BLEND_OP_REV_SUBTRACT = 3,
    D3D10_BLEND_OP_MIN = 4,
    D3D10_BLEND_OP_MAX = 5,
}

enum D3D10_COLOR_WRITE_ENABLE {
    D3D10_COLOR_WRITE_ENABLE_RED = 1,
    D3D10_COLOR_WRITE_ENABLE_GREEN = 2,
    D3D10_COLOR_WRITE_ENABLE_BLUE = 4,
    D3D10_COLOR_WRITE_ENABLE_ALPHA = 8,
    D3D10_COLOR_WRITE_ENABLE_ALL = 15,
}

enum D3D10_TEXTURECUBE_FACE {
    D3D10_TEXTURECUBE_FACE_POSITIVE_X = 0,
    D3D10_TEXTURECUBE_FACE_NEGATIVE_X = 1,
    D3D10_TEXTURECUBE_FACE_POSITIVE_Y = 2,
    D3D10_TEXTURECUBE_FACE_NEGATIVE_Y = 3,
    D3D10_TEXTURECUBE_FACE_POSITIVE_Z = 4,
    D3D10_TEXTURECUBE_FACE_NEGATIVE_Z = 5,
}

enum D3D10_FILTER {
    D3D10_FILTER_MIN_MAG_MIP_POINT = 0,
    D3D10_FILTER_MIN_MAG_POINT_MIP_LINEAR = 1,
    D3D10_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT = 4,
    D3D10_FILTER_MIN_POINT_MAG_MIP_LINEAR = 5,
    D3D10_FILTER_MIN_LINEAR_MAG_MIP_POINT = 16,
    D3D10_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 17,
    D3D10_FILTER_MIN_MAG_LINEAR_MIP_POINT = 20,
    D3D10_FILTER_MIN_MAG_MIP_LINEAR = 21,
    D3D10_FILTER_ANISOTROPIC = 85,
    D3D10_FILTER_COMPARISON_MIN_MAG_MIP_POINT = 128,
    D3D10_FILTER_COMPARISON_MIN_MAG_POINT_MIP_LINEAR = 129,
    D3D10_FILTER_COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT = 132,
    D3D10_FILTER_COMPARISON_MIN_POINT_MAG_MIP_LINEAR = 133,
    D3D10_FILTER_COMPARISON_MIN_LINEAR_MAG_MIP_POINT = 144,
    D3D10_FILTER_COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 145,
    D3D10_FILTER_COMPARISON_MIN_MAG_LINEAR_MIP_POINT = 148,
    D3D10_FILTER_COMPARISON_MIN_MAG_MIP_LINEAR = 149,
    D3D10_FILTER_COMPARISON_ANISOTROPIC = 213,
    D3D10_FILTER_TEXT_1BIT = -2147483648,
}

enum D3D10_FILTER_TYPE {
    D3D10_FILTER_TYPE_POINT = 0,
    D3D10_FILTER_TYPE_LINEAR = 1,
}

enum D3D10_TEXTURE_ADDRESS_MODE {
    D3D10_TEXTURE_ADDRESS_WRAP = 1,
    D3D10_TEXTURE_ADDRESS_MIRROR = 2,
    D3D10_TEXTURE_ADDRESS_CLAMP = 3,
    D3D10_TEXTURE_ADDRESS_BORDER = 4,
    D3D10_TEXTURE_ADDRESS_MIRROR_ONCE = 5,
}

enum D3D10_FORMAT_SUPPORT {
    D3D10_FORMAT_SUPPORT_BUFFER = 1,
    D3D10_FORMAT_SUPPORT_IA_VERTEX_BUFFER = 2,
    D3D10_FORMAT_SUPPORT_IA_INDEX_BUFFER = 4,
    D3D10_FORMAT_SUPPORT_SO_BUFFER = 8,
    D3D10_FORMAT_SUPPORT_TEXTURE1D = 16,
    D3D10_FORMAT_SUPPORT_TEXTURE2D = 32,
    D3D10_FORMAT_SUPPORT_TEXTURE3D = 64,
    D3D10_FORMAT_SUPPORT_TEXTURECUBE = 128,
    D3D10_FORMAT_SUPPORT_SHADER_LOAD = 256,
    D3D10_FORMAT_SUPPORT_SHADER_SAMPLE = 512,
    D3D10_FORMAT_SUPPORT_SHADER_SAMPLE_COMPARISON = 1024,
    D3D10_FORMAT_SUPPORT_SHADER_SAMPLE_MONO_TEXT = 2048,
    D3D10_FORMAT_SUPPORT_MIP = 4096,
    D3D10_FORMAT_SUPPORT_MIP_AUTOGEN = 8192,
    D3D10_FORMAT_SUPPORT_RENDER_TARGET = 16384,
    D3D10_FORMAT_SUPPORT_BLENDABLE = 32768,
    D3D10_FORMAT_SUPPORT_DEPTH_STENCIL = 65536,
    D3D10_FORMAT_SUPPORT_CPU_LOCKABLE = 131072,
    D3D10_FORMAT_SUPPORT_MULTISAMPLE_RESOLVE = 262144,
    D3D10_FORMAT_SUPPORT_DISPLAY = 524288,
    D3D10_FORMAT_SUPPORT_CAST_WITHIN_BIT_LAYOUT = 1048576,
    D3D10_FORMAT_SUPPORT_MULTISAMPLE_RENDERTARGET = 2097152,
    D3D10_FORMAT_SUPPORT_MULTISAMPLE_LOAD = 4194304,
    D3D10_FORMAT_SUPPORT_SHADER_GATHER = 8388608,
    D3D10_FORMAT_SUPPORT_BACK_BUFFER_CAST = 16777216,
}

enum D3D10_ASYNC_GETDATA_FLAG {
    D3D10_ASYNC_GETDATA_DONOTFLUSH = 1,
}

enum D3D10_QUERY {
    D3D10_QUERY_EVENT = 0,
    D3D10_QUERY_OCCLUSION = 1,
    D3D10_QUERY_TIMESTAMP = 2,
    D3D10_QUERY_TIMESTAMP_DISJOINT = 3,
    D3D10_QUERY_PIPELINE_STATISTICS = 4,
    D3D10_QUERY_OCCLUSION_PREDICATE = 5,
    D3D10_QUERY_SO_STATISTICS = 6,
    D3D10_QUERY_SO_OVERFLOW_PREDICATE = 7,
}

enum D3D10_QUERY_MISC_FLAG {
    D3D10_QUERY_MISC_PREDICATEHINT = 1,
}

enum D3D10_COUNTER {
    D3D10_COUNTER_GPU_IDLE = 0,
    D3D10_COUNTER_VERTEX_PROCESSING = 1,
    D3D10_COUNTER_GEOMETRY_PROCESSING = 2,
    D3D10_COUNTER_PIXEL_PROCESSING = 3,
    D3D10_COUNTER_OTHER_GPU_PROCESSING = 4,
    D3D10_COUNTER_HOST_ADAPTER_BANDWIDTH_UTILIZATION = 5,
    D3D10_COUNTER_LOCAL_VIDMEM_BANDWIDTH_UTILIZATION = 6,
    D3D10_COUNTER_VERTEX_THROUGHPUT_UTILIZATION = 7,
    D3D10_COUNTER_TRIANGLE_SETUP_THROUGHPUT_UTILIZATION = 8,
    D3D10_COUNTER_FILLRATE_THROUGHPUT_UTILIZATION = 9,
    D3D10_COUNTER_VS_MEMORY_LIMITED = 10,
    D3D10_COUNTER_VS_COMPUTATION_LIMITED = 11,
    D3D10_COUNTER_GS_MEMORY_LIMITED = 12,
    D3D10_COUNTER_GS_COMPUTATION_LIMITED = 13,
    D3D10_COUNTER_PS_MEMORY_LIMITED = 14,
    D3D10_COUNTER_PS_COMPUTATION_LIMITED = 15,
    D3D10_COUNTER_POST_TRANSFORM_CACHE_HIT_RATE = 16,
    D3D10_COUNTER_TEXTURE_CACHE_HIT_RATE = 17,
    D3D10_COUNTER_DEVICE_DEPENDENT_0 = 1073741824,
}

enum D3D10_COUNTER_TYPE {
    D3D10_COUNTER_TYPE_FLOAT32 = 0,
    D3D10_COUNTER_TYPE_UINT16 = 1,
    D3D10_COUNTER_TYPE_UINT32 = 2,
    D3D10_COUNTER_TYPE_UINT64 = 3,
}

enum D3D10_CREATE_DEVICE_FLAG {
    D3D10_CREATE_DEVICE_SINGLETHREADED = 1,
    D3D10_CREATE_DEVICE_DEBUG = 2,
    D3D10_CREATE_DEVICE_SWITCH_TO_REF = 4,
    D3D10_CREATE_DEVICE_PREVENT_INTERNAL_THREADING_OPTIMIZATIONS = 8,
    D3D10_CREATE_DEVICE_ALLOW_NULL_FROM_MAP = 16,
    D3D10_CREATE_DEVICE_BGRA_SUPPORT = 32,
    D3D10_CREATE_DEVICE_PREVENT_ALTERING_LAYER_SETTINGS_FROM_REGISTRY = 128,
    D3D10_CREATE_DEVICE_STRICT_VALIDATION = 512,
    D3D10_CREATE_DEVICE_DEBUGGABLE = 1024,
}

struct D3D10_INPUT_ELEMENT_DESC {
    LPCSTR SemanticName;
    UINT SemanticIndex;
    DXGI_FORMAT Format;
    UINT InputSlot;
    UINT AlignedByteOffset;
    D3D10_INPUT_CLASSIFICATION InputSlotClass;
    UINT InstanceDataStepRate;
}

struct D3D10_SO_DECLARATION_ENTRY {
    LPCSTR SemanticName;
    UINT SemanticIndex;
    BYTE StartComponent;
    BYTE ComponentCount;
    BYTE OutputSlot;
}

struct D3D10_VIEWPORT {
    INT TopLeftX;
    INT TopLeftY;
    UINT Width;
    UINT Height;
    FLOAT MinDepth;
    FLOAT MaxDepth;
}

struct D3D10_BOX {
    UINT left;
    UINT top;
    UINT front;
    UINT right;
    UINT bottom;
    UINT back;
}

struct D3D10_DEPTH_STENCILOP_DESC {
    D3D10_STENCIL_OP StencilFailOp;
    D3D10_STENCIL_OP StencilDepthFailOp;
    D3D10_STENCIL_OP StencilPassOp;
    D3D10_COMPARISON_FUNC StencilFunc;
}

struct D3D10_DEPTH_STENCIL_DESC {
    BOOL DepthEnable;
    D3D10_DEPTH_WRITE_MASK DepthWriteMask;
    D3D10_COMPARISON_FUNC DepthFunc;
    BOOL StencilEnable;
    UINT8 StencilReadMask;
    UINT8 StencilWriteMask;
    D3D10_DEPTH_STENCILOP_DESC FrontFace;
    D3D10_DEPTH_STENCILOP_DESC BackFace;
}

struct D3D10_BLEND_DESC {
    BOOL AlphaToCoverageEnable;
    BOOL [8] BlendEnable;
    D3D10_BLEND SrcBlend;
    D3D10_BLEND DestBlend;
    D3D10_BLEND_OP BlendOp;
    D3D10_BLEND SrcBlendAlpha;
    D3D10_BLEND DestBlendAlpha;
    D3D10_BLEND_OP BlendOpAlpha;
    UINT8 [8] RenderTargetWriteMask;
}

struct D3D10_RASTERIZER_DESC {
    D3D10_FILL_MODE FillMode;
    D3D10_CULL_MODE CullMode;
    BOOL FrontCounterClockwise;
    INT DepthBias;
    FLOAT DepthBiasClamp;
    FLOAT SlopeScaledDepthBias;
    BOOL DepthClipEnable;
    BOOL ScissorEnable;
    BOOL MultisampleEnable;
    BOOL AntialiasedLineEnable;
}

struct D3D10_SUBRESOURCE_DATA {
    const void * pSysMem;
    UINT SysMemPitch;
    UINT SysMemSlicePitch;
}

struct D3D10_BUFFER_DESC {
    UINT ByteWidth;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}

struct CD3D10_BUFFER_DESC {
}

struct D3D10_TEXTURE1D_DESC {
    UINT Width;
    UINT MipLevels;
    UINT ArraySize;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}

struct CD3D10_TEXTURE1D_DESC {
}

struct D3D10_TEXTURE2D_DESC {
    UINT Width;
    UINT Height;
    UINT MipLevels;
    UINT ArraySize;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}

struct CD3D10_TEXTURE2D_DESC {
}

struct D3D10_MAPPED_TEXTURE2D {
    void * pData;
    UINT RowPitch;
}

struct D3D10_TEXTURE3D_DESC {
    UINT Width;
    UINT Height;
    UINT Depth;
    UINT MipLevels;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}

struct CD3D10_TEXTURE3D_DESC {
}

struct D3D10_MAPPED_TEXTURE3D {
    void * pData;
    UINT RowPitch;
    UINT DepthPitch;
}

struct D3D10_BUFFER_SRV {
}

struct D3D10_TEX1D_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
}

struct D3D10_TEX1D_ARRAY_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX2D_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
}

struct D3D10_TEX2D_ARRAY_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX3D_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
}

struct D3D10_TEXCUBE_SRV {
    UINT MostDetailedMip;
    UINT MipLevels;
}

struct D3D10_TEX2DMS_SRV {
    UINT UnusedField_NothingToDefine;
}

struct D3D10_TEX2DMS_ARRAY_SRV {
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_SHADER_RESOURCE_VIEW_DESC {
    DXGI_FORMAT Format;
    D3D10_SRV_DIMENSION ViewDimension;
}

struct D3D10_BUFFER_RTV {
}

struct D3D10_TEX1D_RTV {
    UINT MipSlice;
}

struct D3D10_TEX1D_ARRAY_RTV {
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX2D_RTV {
    UINT MipSlice;
}

struct D3D10_TEX2DMS_RTV {
    UINT UnusedField_NothingToDefine;
}

struct D3D10_TEX2D_ARRAY_RTV {
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX2DMS_ARRAY_RTV {
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX3D_RTV {
    UINT MipSlice;
    UINT FirstWSlice;
    UINT WSize;
}

struct D3D10_RENDER_TARGET_VIEW_DESC {
    DXGI_FORMAT Format;
    D3D10_RTV_DIMENSION ViewDimension;
}

struct D3D10_TEX1D_DSV {
    UINT MipSlice;
}

struct D3D10_TEX1D_ARRAY_DSV {
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX2D_DSV {
    UINT MipSlice;
}

struct D3D10_TEX2D_ARRAY_DSV {
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_TEX2DMS_DSV {
    UINT UnusedField_NothingToDefine;
}

struct D3D10_TEX2DMS_ARRAY_DSV {
    UINT FirstArraySlice;
    UINT ArraySize;
}

struct D3D10_DEPTH_STENCIL_VIEW_DESC {
    DXGI_FORMAT Format;
    D3D10_DSV_DIMENSION ViewDimension;
}

struct D3D10_SAMPLER_DESC {
    D3D10_FILTER Filter;
    D3D10_TEXTURE_ADDRESS_MODE AddressU;
    D3D10_TEXTURE_ADDRESS_MODE AddressV;
    D3D10_TEXTURE_ADDRESS_MODE AddressW;
    FLOAT MipLODBias;
    UINT MaxAnisotropy;
    D3D10_COMPARISON_FUNC ComparisonFunc;
    FLOAT [4] BorderColor;
    FLOAT MinLOD;
    FLOAT MaxLOD;
}

struct D3D10_QUERY_DESC {
    D3D10_QUERY Query;
    UINT MiscFlags;
}

struct D3D10_QUERY_DATA_TIMESTAMP_DISJOINT {
    UINT64 Frequency;
    BOOL Disjoint;
}

struct D3D10_QUERY_DATA_PIPELINE_STATISTICS {
    UINT64 IAVertices;
    UINT64 IAPrimitives;
    UINT64 VSInvocations;
    UINT64 GSInvocations;
    UINT64 GSPrimitives;
    UINT64 CInvocations;
    UINT64 CPrimitives;
    UINT64 PSInvocations;
}

struct D3D10_QUERY_DATA_SO_STATISTICS {
    UINT64 NumPrimitivesWritten;
    UINT64 PrimitivesStorageNeeded;
}

struct D3D10_COUNTER_DESC {
    D3D10_COUNTER Counter;
    UINT MiscFlags;
}

struct D3D10_COUNTER_INFO {
    D3D10_COUNTER LastDeviceDependentCounter;
    UINT NumSimultaneousCounters;
    UINT8 NumDetectableParallelUnits;
}

interface ID3D10DeviceChild: IUnknown {
    static immutable uuidof = GUID(0x9B7E4C00, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDevice(ID3D10Device * ppDevice);
    HRESULT GetPrivateData(const GUID * guid, UINT * pDataSize, void * pData);
    HRESULT SetPrivateData(const GUID * guid, UINT DataSize, const void * pData);
    HRESULT SetPrivateDataInterface(const GUID * guid, const IUnknown * pData);
}

interface ID3D10DepthStencilState: ID3D10DeviceChild {
    static immutable uuidof = GUID(0x2B4B1CC8, 0xA4AD, 0x41f8, [0x83, 0x22, 0xCA, 0x86, 0xFC, 0x3E, 0xC6, 0x75]);
    void GetDesc(D3D10_DEPTH_STENCIL_DESC * pDesc);
}

interface ID3D10BlendState: ID3D10DeviceChild {
    static immutable uuidof = GUID(0xEDAD8D19, 0x8A35, 0x4d6d, [0x85, 0x66, 0x2E, 0xA2, 0x76, 0xCD, 0xE1, 0x61]);
    void GetDesc(D3D10_BLEND_DESC * pDesc);
}

interface ID3D10RasterizerState: ID3D10DeviceChild {
    static immutable uuidof = GUID(0xA2A07292, 0x89AF, 0x4345, [0xBE, 0x2E, 0xC5, 0x3D, 0x9F, 0xBB, 0x6E, 0x9F]);
    void GetDesc(D3D10_RASTERIZER_DESC * pDesc);
}

interface ID3D10Resource: ID3D10DeviceChild {
    static immutable uuidof = GUID(0x9B7E4C01, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetType(D3D10_RESOURCE_DIMENSION * rType);
    void SetEvictionPriority(UINT EvictionPriority);
    UINT GetEvictionPriority();
}

interface ID3D10Buffer: ID3D10Resource {
    static immutable uuidof = GUID(0x9B7E4C02, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    HRESULT Map(D3D10_MAP MapType, UINT MapFlags, void ** ppData);
    void Unmap();
    void GetDesc(D3D10_BUFFER_DESC * pDesc);
}

interface ID3D10Texture1D: ID3D10Resource {
    static immutable uuidof = GUID(0x9B7E4C03, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, void ** ppData);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE1D_DESC * pDesc);
}

interface ID3D10Texture2D: ID3D10Resource {
    static immutable uuidof = GUID(0x9B7E4C04, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, D3D10_MAPPED_TEXTURE2D * pMappedTex2D);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE2D_DESC * pDesc);
}

interface ID3D10Texture3D: ID3D10Resource {
    static immutable uuidof = GUID(0x9B7E4C05, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, D3D10_MAPPED_TEXTURE3D * pMappedTex3D);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE3D_DESC * pDesc);
}

interface ID3D10View: ID3D10DeviceChild {
    static immutable uuidof = GUID(0xC902B03F, 0x60A7, 0x49BA, [0x99, 0x36, 0x2A, 0x3A, 0xB3, 0x7A, 0x7E, 0x33]);
    void GetResource(ID3D10Resource * ppResource);
}

interface ID3D10ShaderResourceView: ID3D10View {
    static immutable uuidof = GUID(0x9B7E4C07, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_SHADER_RESOURCE_VIEW_DESC * pDesc);
}

interface ID3D10RenderTargetView: ID3D10View {
    static immutable uuidof = GUID(0x9B7E4C08, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_RENDER_TARGET_VIEW_DESC * pDesc);
}

interface ID3D10DepthStencilView: ID3D10View {
    static immutable uuidof = GUID(0x9B7E4C09, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_DEPTH_STENCIL_VIEW_DESC * pDesc);
}

interface ID3D10VertexShader: IUnknown {
    static immutable uuidof = GUID(0x9B7E4C0A, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
}

interface ID3D10GeometryShader: IUnknown {
    static immutable uuidof = GUID(0x6316BE88, 0x54CD, 0x4040, [0xAB, 0x44, 0x20, 0x46, 0x1B, 0xC8, 0x1F, 0x68]);
}

interface ID3D10PixelShader: IUnknown {
    static immutable uuidof = GUID(0x4968B601, 0x9D00, 0x4cde, [0x83, 0x46, 0x8E, 0x7F, 0x67, 0x58, 0x19, 0xB6]);
}

interface ID3D10InputLayout: IUnknown {
    static immutable uuidof = GUID(0x9B7E4C0B, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
}

interface ID3D10SamplerState: ID3D10DeviceChild {
    static immutable uuidof = GUID(0x9B7E4C0C, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_SAMPLER_DESC * pDesc);
}

interface ID3D10Asynchronous: ID3D10DeviceChild {
    static immutable uuidof = GUID(0x9B7E4C0D, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void Begin();
    void End();
    HRESULT GetData(void * pData, UINT DataSize, UINT GetDataFlags);
    UINT GetDataSize();
}

interface ID3D10Query: ID3D10Asynchronous {
    static immutable uuidof = GUID(0x9B7E4C0E, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_QUERY_DESC * pDesc);
}

interface ID3D10Predicate: IUnknown {
    static immutable uuidof = GUID(0x9B7E4C10, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
}

interface ID3D10Counter: ID3D10Asynchronous {
    static immutable uuidof = GUID(0x9B7E4C11, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void GetDesc(D3D10_COUNTER_DESC * pDesc);
}

interface ID3D10Device: IUnknown {
    static immutable uuidof = GUID(0x9B7E4C0F, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void VSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void PSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void PSSetShader(ID3D10PixelShader  pPixelShader);
    void PSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void VSSetShader(ID3D10VertexShader  pVertexShader);
    void DrawIndexed(UINT IndexCount, UINT StartIndexLocation, INT BaseVertexLocation);
    void Draw(UINT VertexCount, UINT StartVertexLocation);
    void PSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void IASetInputLayout(ID3D10InputLayout  pInputLayout);
    void IASetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppVertexBuffers, const UINT * pStrides, const UINT * pOffsets);
    void IASetIndexBuffer(ID3D10Buffer  pIndexBuffer, DXGI_FORMAT Format, UINT Offset);
    void DrawIndexedInstanced(UINT IndexCountPerInstance, UINT InstanceCount, UINT StartIndexLocation, INT BaseVertexLocation, UINT StartInstanceLocation);
    void DrawInstanced(UINT VertexCountPerInstance, UINT InstanceCount, UINT StartVertexLocation, UINT StartInstanceLocation);
    void GSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void GSSetShader(ID3D10GeometryShader  pShader);
    void IASetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY Topology);
    void VSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void VSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void SetPredication(ID3D10Predicate  pPredicate, BOOL PredicateValue);
    void GSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void GSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void OMSetRenderTargets(UINT NumViews, ID3D10RenderTargetView * ppRenderTargetViews, ID3D10DepthStencilView  pDepthStencilView);
    void OMSetBlendState(ID3D10BlendState  pBlendState, const FLOAT [4] BlendFactor, UINT SampleMask);
    void OMSetDepthStencilState(ID3D10DepthStencilState  pDepthStencilState, UINT StencilRef);
    void SOSetTargets(UINT NumBuffers, ID3D10Buffer * ppSOTargets, const UINT * pOffsets);
    void DrawAuto();
    void RSSetState(ID3D10RasterizerState  pRasterizerState);
    void RSSetViewports(UINT NumViewports, const D3D10_VIEWPORT * pViewports);
    void RSSetScissorRects(UINT NumRects, const D3D10_RECT * pRects);
    void CopySubresourceRegion(ID3D10Resource  pDstResource, UINT DstSubresource, UINT DstX, UINT DstY, UINT DstZ, ID3D10Resource  pSrcResource, UINT SrcSubresource, const D3D10_BOX * pSrcBox);
    void CopyResource(ID3D10Resource  pDstResource, ID3D10Resource  pSrcResource);
    void UpdateSubresource(ID3D10Resource  pDstResource, UINT DstSubresource, const D3D10_BOX * pDstBox, const void * pSrcData, UINT SrcRowPitch, UINT SrcDepthPitch);
    void ClearRenderTargetView(ID3D10RenderTargetView  pRenderTargetView, const FLOAT [4] ColorRGBA);
    void ClearDepthStencilView(ID3D10DepthStencilView  pDepthStencilView, UINT ClearFlags, FLOAT Depth, UINT8 Stencil);
    void GenerateMips(ID3D10ShaderResourceView  pShaderResourceView);
    void ResolveSubresource(ID3D10Resource  pDstResource, UINT DstSubresource, ID3D10Resource  pSrcResource, UINT SrcSubresource, DXGI_FORMAT Format);
    void VSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void PSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void PSGetShader(ID3D10PixelShader * ppPixelShader);
    void PSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void VSGetShader(ID3D10VertexShader * ppVertexShader);
    void PSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void IAGetInputLayout(ID3D10InputLayout * ppInputLayout);
    void IAGetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppVertexBuffers, UINT * pStrides, UINT * pOffsets);
    void IAGetIndexBuffer(ID3D10Buffer * pIndexBuffer, DXGI_FORMAT * Format, UINT * Offset);
    void GSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer * ppConstantBuffers);
    void GSGetShader(ID3D10GeometryShader * ppGeometryShader);
    void IAGetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY * pTopology);
    void VSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void VSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void GetPredication(ID3D10Predicate * ppPredicate, BOOL * pPredicateValue);
    void GSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView * ppShaderResourceViews);
    void GSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState * ppSamplers);
    void OMGetRenderTargets(UINT NumViews, ID3D10RenderTargetView * ppRenderTargetViews, ID3D10DepthStencilView * ppDepthStencilView);
    void OMGetBlendState(ID3D10BlendState * ppBlendState, FLOAT [4] BlendFactor, UINT * pSampleMask);
    void OMGetDepthStencilState(ID3D10DepthStencilState * ppDepthStencilState, UINT * pStencilRef);
    void SOGetTargets(UINT NumBuffers, ID3D10Buffer * ppSOTargets, UINT * pOffsets);
    void RSGetState(ID3D10RasterizerState * ppRasterizerState);
    void RSGetViewports(UINT * NumViewports, D3D10_VIEWPORT * pViewports);
    void RSGetScissorRects(UINT * NumRects, D3D10_RECT * pRects);
    HRESULT GetDeviceRemovedReason();
    HRESULT SetExceptionMode(UINT RaiseFlags);
    UINT GetExceptionMode();
    HRESULT GetPrivateData(const GUID * guid, UINT * pDataSize, void * pData);
    HRESULT SetPrivateData(const GUID * guid, UINT DataSize, const void * pData);
    HRESULT SetPrivateDataInterface(const GUID * guid, const IUnknown * pData);
    void ClearState();
    void Flush();
    HRESULT CreateBuffer(const D3D10_BUFFER_DESC * pDesc, const D3D10_SUBRESOURCE_DATA * pInitialData, ID3D10Buffer * ppBuffer);
    HRESULT CreateTexture1D(const D3D10_TEXTURE1D_DESC * pDesc, const D3D10_SUBRESOURCE_DATA * pInitialData, ID3D10Texture1D * ppTexture1D);
    HRESULT CreateTexture2D(const D3D10_TEXTURE2D_DESC * pDesc, const D3D10_SUBRESOURCE_DATA * pInitialData, ID3D10Texture2D * ppTexture2D);
    HRESULT CreateTexture3D(const D3D10_TEXTURE3D_DESC * pDesc, const D3D10_SUBRESOURCE_DATA * pInitialData, ID3D10Texture3D * ppTexture3D);
    HRESULT CreateShaderResourceView(ID3D10Resource  pResource, const D3D10_SHADER_RESOURCE_VIEW_DESC * pDesc, ID3D10ShaderResourceView * ppSRView);
    HRESULT CreateRenderTargetView(ID3D10Resource  pResource, const D3D10_RENDER_TARGET_VIEW_DESC * pDesc, ID3D10RenderTargetView * ppRTView);
    HRESULT CreateDepthStencilView(ID3D10Resource  pResource, const D3D10_DEPTH_STENCIL_VIEW_DESC * pDesc, ID3D10DepthStencilView * ppDepthStencilView);
    HRESULT CreateInputLayout(const D3D10_INPUT_ELEMENT_DESC * pInputElementDescs, UINT NumElements, const void * pShaderBytecodeWithInputSignature, SIZE_T BytecodeLength, ID3D10InputLayout * ppInputLayout);
    HRESULT CreateVertexShader(const void * pShaderBytecode, SIZE_T BytecodeLength, ID3D10VertexShader * ppVertexShader);
    HRESULT CreateGeometryShader(const void * pShaderBytecode, SIZE_T BytecodeLength, ID3D10GeometryShader * ppGeometryShader);
    HRESULT CreateGeometryShaderWithStreamOutput(const void * pShaderBytecode, SIZE_T BytecodeLength, const D3D10_SO_DECLARATION_ENTRY * pSODeclaration, UINT NumEntries, UINT OutputStreamStride, ID3D10GeometryShader * ppGeometryShader);
    HRESULT CreatePixelShader(const void * pShaderBytecode, SIZE_T BytecodeLength, ID3D10PixelShader * ppPixelShader);
    HRESULT CreateBlendState(const D3D10_BLEND_DESC * pBlendStateDesc, ID3D10BlendState * ppBlendState);
    HRESULT CreateDepthStencilState(const D3D10_DEPTH_STENCIL_DESC * pDepthStencilDesc, ID3D10DepthStencilState * ppDepthStencilState);
    HRESULT CreateRasterizerState(const D3D10_RASTERIZER_DESC * pRasterizerDesc, ID3D10RasterizerState * ppRasterizerState);
    HRESULT CreateSamplerState(const D3D10_SAMPLER_DESC * pSamplerDesc, ID3D10SamplerState * ppSamplerState);
    HRESULT CreateQuery(const D3D10_QUERY_DESC * pQueryDesc, ID3D10Query * ppQuery);
    HRESULT CreatePredicate(const D3D10_QUERY_DESC * pPredicateDesc, ID3D10Predicate * ppPredicate);
    HRESULT CreateCounter(const D3D10_COUNTER_DESC * pCounterDesc, ID3D10Counter * ppCounter);
    HRESULT CheckFormatSupport(DXGI_FORMAT Format, UINT * pFormatSupport);
    HRESULT CheckMultisampleQualityLevels(DXGI_FORMAT Format, UINT SampleCount, UINT * pNumQualityLevels);
    void CheckCounterInfo(D3D10_COUNTER_INFO * pCounterInfo);
    HRESULT CheckCounter(const D3D10_COUNTER_DESC * pDesc, D3D10_COUNTER_TYPE * pType, UINT * pActiveCounters, LPSTR szName, UINT * pNameLength, LPSTR szUnits, UINT * pUnitsLength, LPSTR szDescription, UINT * pDescriptionLength);
    UINT GetCreationFlags();
    HRESULT OpenSharedResource(HANDLE hResource, const IID * ReturnedInterface, void ** ppResource);
    void SetTextFilterSize(UINT Width, UINT Height);
    void GetTextFilterSize(UINT * pWidth, UINT * pHeight);
}

interface ID3D10Multithread: IUnknown {
    static immutable uuidof = GUID(0x9B7E4E00, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]);
    void Enter();
    void Leave();
    BOOL SetMultithreadProtected(BOOL bMTProtect);
    BOOL GetMultithreadProtected();
}

UINT D3D10CalcSubresource(UINT MipSlice, UINT ArraySlice, UINT MipLevels);

}
