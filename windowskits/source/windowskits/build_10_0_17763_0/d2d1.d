// pycpptool generated: 2019-04-15 21:18:23.057527
module windowskits.build_10_0_17763_0.d2d1;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dcommon;
public import windowskits.build_10_0_17763_0.d2dbasetypes;
public import windowskits.build_10_0_17763_0.dxgiformat;

extern(Windows){

alias IID = GUID;


enum D2DERR_RECREATE_TARGET = 0x8899000CL;
enum D2D1_DEFAULT_FLATTENING_TOLERANCE = ( 0.25f );
interface IDWriteTextFormat: IUnknown {
}

interface IDWriteTextLayout: IUnknown {
}

interface IDWriteRenderingParams: IUnknown {
}

interface IWICBitmap: IUnknown {
}

interface IWICBitmapSource: IUnknown {
}

struct DWRITE_GLYPH_RUN{
}

enum  {
    D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR = 0x00000000,
    D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR = 0x00000001,
    D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC = 0x00000002,
    D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR = 0x00000003,
    D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC = 0x00000004,
    D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC = 0x00000005,
    D2D1_INTERPOLATION_MODE_DEFINITION_FANT = 0x00000006,
    D2D1_INTERPOLATION_MODE_DEFINITION_MIPMAP_LINEAR = 0x00000007,
}

enum D2D1_GAMMA {
    _2_2 = 0x00000000,
    _1_0 = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_OPACITY_MASK_CONTENT {
    GRAPHICS = 0x00000000,
    TEXT_NATURAL = 0x00000001,
    TEXT_GDI_COMPATIBLE = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_EXTEND_MODE {
    CLAMP = 0x00000000,
    WRAP = 0x00000001,
    MIRROR = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_ANTIALIAS_MODE {
    PER_PRIMITIVE = 0x00000000,
    ALIASED = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_TEXT_ANTIALIAS_MODE {
    DEFAULT = 0x00000000,
    CLEARTYPE = 0x00000001,
    GRAYSCALE = 0x00000002,
    ALIASED = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_BITMAP_INTERPOLATION_MODE {
    NEAREST_NEIGHBOR = 0x00000000,
    LINEAR = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_DRAW_TEXT_OPTIONS {
    NO_SNAP = 0x00000001,
    CLIP = 0x00000002,
    ENABLE_COLOR_FONT = 0x00000004,
    DISABLE_COLOR_BITMAP_SNAPPING = 0x00000008,
    NONE = 0x00000000,
    FORCE_DWORD = -0x0000001,
}

alias D2D1_POINT_2U = D2D_POINT_2U;

alias D2D1_POINT_2F = D2D_POINT_2F;

alias D2D1_RECT_F = D2D_RECT_F;

alias D2D1_RECT_U = D2D_RECT_U;

alias D2D1_SIZE_F = D2D_SIZE_F;

alias D2D1_SIZE_U = D2D_SIZE_U;

alias D2D1_COLOR_F = D2D_COLOR_F;

alias D2D1_MATRIX_3X2_F = D2D_MATRIX_3X2_F;

alias D2D1_TAG = UINT64;

struct D2D1_BITMAP_PROPERTIES{
  D2D1_PIXEL_FORMAT pixelFormat;
  FLOAT dpiX;
  FLOAT dpiY;
}

struct D2D1_GRADIENT_STOP{
  FLOAT position;
  D2D1_COLOR_F color;
}

struct D2D1_BRUSH_PROPERTIES{
  FLOAT opacity;
  D2D1_MATRIX_3X2_F transform;
}

struct D2D1_BITMAP_BRUSH_PROPERTIES{
  D2D1_EXTEND_MODE extendModeX;
  D2D1_EXTEND_MODE extendModeY;
  D2D1_BITMAP_INTERPOLATION_MODE interpolationMode;
}

struct D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES{
  D2D1_POINT_2F startPoint;
  D2D1_POINT_2F endPoint;
}

struct D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES{
  D2D1_POINT_2F center;
  D2D1_POINT_2F gradientOriginOffset;
  FLOAT radiusX;
  FLOAT radiusY;
}

enum D2D1_ARC_SIZE {
    SMALL = 0x00000000,
    LARGE = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_CAP_STYLE {
    FLAT = 0x00000000,
    SQUARE = 0x00000001,
    ROUND = 0x00000002,
    TRIANGLE = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_DASH_STYLE {
    SOLID = 0x00000000,
    DASH = 0x00000001,
    DOT = 0x00000002,
    DASH_DOT = 0x00000003,
    DASH_DOT_DOT = 0x00000004,
    CUSTOM = 0x00000005,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_LINE_JOIN {
    MITER = 0x00000000,
    BEVEL = 0x00000001,
    ROUND = 0x00000002,
    MITER_OR_BEVEL = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_COMBINE_MODE {
    UNION = 0x00000000,
    INTERSECT = 0x00000001,
    XOR = 0x00000002,
    EXCLUDE = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_GEOMETRY_RELATION {
    UNKNOWN = 0x00000000,
    DISJOINT = 0x00000001,
    IS_CONTAINED = 0x00000002,
    CONTAINS = 0x00000003,
    OVERLAP = 0x00000004,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_GEOMETRY_SIMPLIFICATION_OPTION {
    CUBICS_AND_LINES = 0x00000000,
    LINES = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_FIGURE_BEGIN {
    FILLED = 0x00000000,
    HOLLOW = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_FIGURE_END {
    OPEN = 0x00000000,
    CLOSED = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_BEZIER_SEGMENT{
  D2D1_POINT_2F point1;
  D2D1_POINT_2F point2;
  D2D1_POINT_2F point3;
}

struct D2D1_TRIANGLE{
  D2D1_POINT_2F point1;
  D2D1_POINT_2F point2;
  D2D1_POINT_2F point3;
}

enum D2D1_PATH_SEGMENT {
    NONE = 0x00000000,
    FORCE_UNSTROKED = 0x00000001,
    FORCE_ROUND_LINE_JOIN = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_SWEEP_DIRECTION {
    COUNTER_CLOCKWISE = 0x00000000,
    CLOCKWISE = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_FILL_MODE {
    ALTERNATE = 0x00000000,
    WINDING = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_ARC_SEGMENT{
  D2D1_POINT_2F point;
  D2D1_SIZE_F size;
  FLOAT rotationAngle;
  D2D1_SWEEP_DIRECTION sweepDirection;
  D2D1_ARC_SIZE arcSize;
}

struct D2D1_QUADRATIC_BEZIER_SEGMENT{
  D2D1_POINT_2F point1;
  D2D1_POINT_2F point2;
}

struct D2D1_ELLIPSE{
  D2D1_POINT_2F point;
  FLOAT radiusX;
  FLOAT radiusY;
}

struct D2D1_ROUNDED_RECT{
  D2D1_RECT_F rect;
  FLOAT radiusX;
  FLOAT radiusY;
}

struct D2D1_STROKE_STYLE_PROPERTIES{
  D2D1_CAP_STYLE startCap;
  D2D1_CAP_STYLE endCap;
  D2D1_CAP_STYLE dashCap;
  D2D1_LINE_JOIN lineJoin;
  FLOAT miterLimit;
  D2D1_DASH_STYLE dashStyle;
  FLOAT dashOffset;
}

enum D2D1_LAYER_OPTIONS {
    NONE = 0x00000000,
    INITIALIZE_FOR_CLEARTYPE = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_LAYER_PARAMETERS{
  D2D1_RECT_F contentBounds;
  ID2D1Geometry * geometricMask;
  D2D1_ANTIALIAS_MODE maskAntialiasMode;
  D2D1_MATRIX_3X2_F maskTransform;
  FLOAT opacity;
  ID2D1Brush * opacityBrush;
  D2D1_LAYER_OPTIONS layerOptions;
}

enum D2D1_WINDOW_STATE {
    NONE = 0x00000000,
    OCCLUDED = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_RENDER_TARGET_TYPE {
    DEFAULT = 0x00000000,
    SOFTWARE = 0x00000001,
    HARDWARE = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_FEATURE_LEVEL {
    DEFAULT = 0x00000000,
    _9 = 0x00009100,
    _10 = 0x0000a000,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_RENDER_TARGET_USAGE {
    NONE = 0x00000000,
    FORCE_BITMAP_REMOTING = 0x00000001,
    GDI_COMPATIBLE = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_PRESENT_OPTIONS {
    NONE = 0x00000000,
    RETAIN_CONTENTS = 0x00000001,
    IMMEDIATELY = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_RENDER_TARGET_PROPERTIES{
  D2D1_RENDER_TARGET_TYPE type;
  D2D1_PIXEL_FORMAT pixelFormat;
  FLOAT dpiX;
  FLOAT dpiY;
  D2D1_RENDER_TARGET_USAGE usage;
  D2D1_FEATURE_LEVEL minLevel;
}

struct D2D1_HWND_RENDER_TARGET_PROPERTIES{
  HWND hwnd;
  D2D1_SIZE_U pixelSize;
  D2D1_PRESENT_OPTIONS presentOptions;
}

enum D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS {
    NONE = 0x00000000,
    GDI_COMPATIBLE = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_DRAWING_STATE_DESCRIPTION{
  D2D1_ANTIALIAS_MODE antialiasMode;
  D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode;
  D2D1_TAG tag1;
  D2D1_TAG tag2;
  D2D1_MATRIX_3X2_F transform;
}

enum D2D1_DC_INITIALIZE_MODE {
    COPY = 0x00000000,
    CLEAR = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_DEBUG_LEVEL {
    NONE = 0x00000000,
    ERROR = 0x00000001,
    WARNING = 0x00000002,
    INFORMATION = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

enum D2D1_FACTORY_TYPE {
    SINGLE_THREADED = 0x00000000,
    MULTI_THREADED = 0x00000001,
    FORCE_DWORD = -0x0000001,
}

struct D2D1_FACTORY_OPTIONS{
  D2D1_DEBUG_LEVEL debugLevel;
}

interface ID2D1Resource: IUnknown {
    static immutable iidof = GUID(0x2cd90691, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void GetFactory(ID2D1Factory * factory);
}

interface ID2D1Image: ID2D1Resource {
    static immutable iidof = GUID(0x65019f75, 0x8da2, 0x497c, [0xb3, 0x2c, 0xdf, 0xa3, 0x4e, 0x48, 0xed, 0xe6]);
}

interface ID2D1Bitmap: ID2D1Image {
    static immutable iidof = GUID(0xa2296057, 0xea42, 0x4099, [0x98, 0x3b, 0x53, 0x9f, 0xb6, 0x50, 0x54, 0x26]);
    D2D1_SIZE_F GetSize();
    D2D1_SIZE_U GetPixelSize();
    D2D1_PIXEL_FORMAT GetPixelFormat();
    void GetDpi(FLOAT * dpiX, FLOAT * dpiY);
    HRESULT CopyFromBitmap(const D2D1_POINT_2U * destPoint, ID2D1Bitmap  bitmap, const D2D1_RECT_U * srcRect);
    HRESULT CopyFromRenderTarget(const D2D1_POINT_2U * destPoint, ID2D1RenderTarget  renderTarget, const D2D1_RECT_U * srcRect);
    HRESULT CopyFromMemory(const D2D1_RECT_U * dstRect, const void * srcData, UINT32 pitch);
}

interface ID2D1GradientStopCollection: ID2D1Resource {
    static immutable iidof = GUID(0x2cd906a7, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    UINT32 GetGradientStopCount();
    void GetGradientStops(D2D1_GRADIENT_STOP * gradientStops, UINT32 gradientStopsCount);
    D2D1_GAMMA GetColorInterpolationGamma();
    D2D1_EXTEND_MODE GetExtendMode();
}

interface ID2D1Brush: ID2D1Resource {
    static immutable iidof = GUID(0x2cd906a8, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetOpacity(FLOAT opacity);
    void SetTransform(const D2D1_MATRIX_3X2_F * transform);
    FLOAT GetOpacity();
    void GetTransform(D2D1_MATRIX_3X2_F * transform);
}

interface ID2D1BitmapBrush: ID2D1Brush {
    static immutable iidof = GUID(0x2cd906aa, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetExtendModeX(D2D1_EXTEND_MODE extendModeX);
    void SetExtendModeY(D2D1_EXTEND_MODE extendModeY);
    void SetInterpolationMode(D2D1_BITMAP_INTERPOLATION_MODE interpolationMode);
    void SetBitmap(ID2D1Bitmap  bitmap);
    D2D1_EXTEND_MODE GetExtendModeX();
    D2D1_EXTEND_MODE GetExtendModeY();
    D2D1_BITMAP_INTERPOLATION_MODE GetInterpolationMode();
    void GetBitmap(ID2D1Bitmap * bitmap);
}

interface ID2D1SolidColorBrush: ID2D1Brush {
    static immutable iidof = GUID(0x2cd906a9, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetColor(const D2D1_COLOR_F * color);
    D2D1_COLOR_F GetColor();
}

interface ID2D1LinearGradientBrush: ID2D1Brush {
    static immutable iidof = GUID(0x2cd906ab, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetStartPoint(D2D1_POINT_2F startPoint);
    void SetEndPoint(D2D1_POINT_2F endPoint);
    D2D1_POINT_2F GetStartPoint();
    D2D1_POINT_2F GetEndPoint();
    void GetGradientStopCollection(ID2D1GradientStopCollection * gradientStopCollection);
}

interface ID2D1RadialGradientBrush: ID2D1Brush {
    static immutable iidof = GUID(0x2cd906ac, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetCenter(D2D1_POINT_2F center);
    void SetGradientOriginOffset(D2D1_POINT_2F gradientOriginOffset);
    void SetRadiusX(FLOAT radiusX);
    void SetRadiusY(FLOAT radiusY);
    D2D1_POINT_2F GetCenter();
    D2D1_POINT_2F GetGradientOriginOffset();
    FLOAT GetRadiusX();
    FLOAT GetRadiusY();
    void GetGradientStopCollection(ID2D1GradientStopCollection * gradientStopCollection);
}

interface ID2D1StrokeStyle: ID2D1Resource {
    static immutable iidof = GUID(0x2cd9069d, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    D2D1_CAP_STYLE GetStartCap();
    D2D1_CAP_STYLE GetEndCap();
    D2D1_CAP_STYLE GetDashCap();
    FLOAT GetMiterLimit();
    D2D1_LINE_JOIN GetLineJoin();
    FLOAT GetDashOffset();
    D2D1_DASH_STYLE GetDashStyle();
    UINT32 GetDashesCount();
    void GetDashes(FLOAT * dashes, UINT32 dashesCount);
}

interface ID2D1Geometry: ID2D1Resource {
    static immutable iidof = GUID(0x2cd906a1, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    HRESULT GetBounds(const D2D1_MATRIX_3X2_F * worldTransform, D2D1_RECT_F * bounds);
    HRESULT GetWidenedBounds(FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, D2D1_RECT_F * bounds);
    HRESULT StrokeContainsPoint(D2D1_POINT_2F point, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, BOOL * contains);
    HRESULT FillContainsPoint(D2D1_POINT_2F point, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, BOOL * contains);
    HRESULT CompareWithGeometry(ID2D1Geometry  inputGeometry, const D2D1_MATRIX_3X2_F * inputGeometryTransform, FLOAT flatteningTolerance, D2D1_GEOMETRY_RELATION * relation);
    HRESULT Simplify(D2D1_GEOMETRY_SIMPLIFICATION_OPTION simplificationOption, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, ID2D1SimplifiedGeometrySink  geometrySink);
    HRESULT Tessellate(const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, ID2D1TessellationSink  tessellationSink);
    HRESULT CombineWithGeometry(ID2D1Geometry  inputGeometry, D2D1_COMBINE_MODE combineMode, const D2D1_MATRIX_3X2_F * inputGeometryTransform, FLOAT flatteningTolerance, ID2D1SimplifiedGeometrySink  geometrySink);
    HRESULT Outline(const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, ID2D1SimplifiedGeometrySink  geometrySink);
    HRESULT ComputeArea(const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, FLOAT * area);
    HRESULT ComputeLength(const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, FLOAT * length);
    HRESULT ComputePointAtLength(FLOAT length, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, D2D1_POINT_2F * point, D2D1_POINT_2F * unitTangentVector);
    HRESULT Widen(FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle, const D2D1_MATRIX_3X2_F * worldTransform, FLOAT flatteningTolerance, ID2D1SimplifiedGeometrySink  geometrySink);
}

interface ID2D1RectangleGeometry: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906a2, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void GetRect(D2D1_RECT_F * rect);
}

interface ID2D1RoundedRectangleGeometry: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906a3, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void GetRoundedRect(D2D1_ROUNDED_RECT * roundedRect);
}

interface ID2D1EllipseGeometry: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906a4, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void GetEllipse(D2D1_ELLIPSE * ellipse);
}

interface ID2D1GeometryGroup: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906a6, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    D2D1_FILL_MODE GetFillMode();
    UINT32 GetSourceGeometryCount();
    void GetSourceGeometries(ID2D1Geometry * geometries, UINT32 geometriesCount);
}

interface ID2D1TransformedGeometry: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906bb, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void GetSourceGeometry(ID2D1Geometry * sourceGeometry);
    void GetTransform(D2D1_MATRIX_3X2_F * transform);
}

interface ID2D1SimplifiedGeometrySink: IUnknown {
    static immutable iidof = GUID(0x2cd9069e, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void SetFillMode(D2D1_FILL_MODE fillMode);
    void SetSegmentFlags(D2D1_PATH_SEGMENT vertexFlags);
    void BeginFigure(D2D1_POINT_2F startPoint, D2D1_FIGURE_BEGIN figureBegin);
    void AddLines(const D2D1_POINT_2F * points, UINT32 pointsCount);
    void AddBeziers(const D2D1_BEZIER_SEGMENT * beziers, UINT32 beziersCount);
    void EndFigure(D2D1_FIGURE_END figureEnd);
    HRESULT Close();
}

interface ID2D1GeometrySink: ID2D1SimplifiedGeometrySink {
    static immutable iidof = GUID(0x2cd9069f, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void AddLine(D2D1_POINT_2F point);
    void AddBezier(const D2D1_BEZIER_SEGMENT * bezier);
    void AddQuadraticBezier(const D2D1_QUADRATIC_BEZIER_SEGMENT * bezier);
    void AddQuadraticBeziers(const D2D1_QUADRATIC_BEZIER_SEGMENT * beziers, UINT32 beziersCount);
    void AddArc(const D2D1_ARC_SEGMENT * arc);
}

interface ID2D1TessellationSink: IUnknown {
    static immutable iidof = GUID(0x2cd906c1, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    void AddTriangles(const D2D1_TRIANGLE * triangles, UINT32 trianglesCount);
    HRESULT Close();
}

interface ID2D1PathGeometry: ID2D1Geometry {
    static immutable iidof = GUID(0x2cd906a5, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    HRESULT Open(ID2D1GeometrySink * geometrySink);
    HRESULT Stream(ID2D1GeometrySink  geometrySink);
    HRESULT GetSegmentCount(UINT32 * count);
    HRESULT GetFigureCount(UINT32 * count);
}

interface ID2D1Mesh: ID2D1Resource {
    static immutable iidof = GUID(0x2cd906c2, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    HRESULT Open(ID2D1TessellationSink * tessellationSink);
}

interface ID2D1Layer: ID2D1Resource {
    static immutable iidof = GUID(0x2cd9069b, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    D2D1_SIZE_F GetSize();
}

interface ID2D1DrawingStateBlock: ID2D1Resource {
    static immutable iidof = GUID(0x28506e39, 0xebf6, 0x46a1, [0xbb, 0x47, 0xfd, 0x85, 0x56, 0x5a, 0xb9, 0x57]);
    void GetDescription(D2D1_DRAWING_STATE_DESCRIPTION * stateDescription);
    void SetDescription(const D2D1_DRAWING_STATE_DESCRIPTION * stateDescription);
    void SetTextRenderingParams(IDWriteRenderingParams  textRenderingParams);
    void GetTextRenderingParams(IDWriteRenderingParams * textRenderingParams);
}

interface ID2D1RenderTarget: ID2D1Resource {
    static immutable iidof = GUID(0x2cd90694, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    HRESULT CreateBitmap(D2D1_SIZE_U size, const void * srcData, UINT32 pitch, const D2D1_BITMAP_PROPERTIES * bitmapProperties, ID2D1Bitmap * bitmap);
    HRESULT CreateBitmapFromWicBitmap(IWICBitmapSource  wicBitmapSource, const D2D1_BITMAP_PROPERTIES * bitmapProperties, ID2D1Bitmap * bitmap);
    HRESULT CreateSharedBitmap(const IID * riid, void * data, const D2D1_BITMAP_PROPERTIES * bitmapProperties, ID2D1Bitmap * bitmap);
    HRESULT CreateBitmapBrush(ID2D1Bitmap  bitmap, const D2D1_BITMAP_BRUSH_PROPERTIES * bitmapBrushProperties, const D2D1_BRUSH_PROPERTIES * brushProperties, ID2D1BitmapBrush * bitmapBrush);
    HRESULT CreateSolidColorBrush(const D2D1_COLOR_F * color, const D2D1_BRUSH_PROPERTIES * brushProperties, ID2D1SolidColorBrush * solidColorBrush);
    HRESULT CreateGradientStopCollection(const D2D1_GRADIENT_STOP * gradientStops, UINT32 gradientStopsCount, D2D1_GAMMA colorInterpolationGamma, D2D1_EXTEND_MODE extendMode, ID2D1GradientStopCollection * gradientStopCollection);
    HRESULT CreateLinearGradientBrush(const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES * linearGradientBrushProperties, const D2D1_BRUSH_PROPERTIES * brushProperties, ID2D1GradientStopCollection  gradientStopCollection, ID2D1LinearGradientBrush * linearGradientBrush);
    HRESULT CreateRadialGradientBrush(const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES * radialGradientBrushProperties, const D2D1_BRUSH_PROPERTIES * brushProperties, ID2D1GradientStopCollection  gradientStopCollection, ID2D1RadialGradientBrush * radialGradientBrush);
    HRESULT CreateCompatibleRenderTarget(const D2D1_SIZE_F * desiredSize, const D2D1_SIZE_U * desiredPixelSize, const D2D1_PIXEL_FORMAT * desiredFormat, D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS options, ID2D1BitmapRenderTarget * bitmapRenderTarget);
    HRESULT CreateLayer(const D2D1_SIZE_F * size, ID2D1Layer * layer);
    HRESULT CreateMesh(ID2D1Mesh * mesh);
    void DrawLine(D2D1_POINT_2F point0, D2D1_POINT_2F point1, ID2D1Brush  brush, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle);
    void DrawRectangle(const D2D1_RECT_F * rect, ID2D1Brush  brush, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle);
    void FillRectangle(const D2D1_RECT_F * rect, ID2D1Brush  brush);
    void DrawRoundedRectangle(const D2D1_ROUNDED_RECT * roundedRect, ID2D1Brush  brush, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle);
    void FillRoundedRectangle(const D2D1_ROUNDED_RECT * roundedRect, ID2D1Brush  brush);
    void DrawEllipse(const D2D1_ELLIPSE * ellipse, ID2D1Brush  brush, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle);
    void FillEllipse(const D2D1_ELLIPSE * ellipse, ID2D1Brush  brush);
    void DrawGeometry(ID2D1Geometry  geometry, ID2D1Brush  brush, FLOAT strokeWidth, ID2D1StrokeStyle  strokeStyle);
    void FillGeometry(ID2D1Geometry  geometry, ID2D1Brush  brush, ID2D1Brush  opacityBrush);
    void FillMesh(ID2D1Mesh  mesh, ID2D1Brush  brush);
    void FillOpacityMask(ID2D1Bitmap  opacityMask, ID2D1Brush  brush, D2D1_OPACITY_MASK_CONTENT content, const D2D1_RECT_F * destinationRectangle, const D2D1_RECT_F * sourceRectangle);
    void DrawBitmap(ID2D1Bitmap  bitmap, const D2D1_RECT_F * destinationRectangle, FLOAT opacity, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, const D2D1_RECT_F * sourceRectangle);
    void DrawTextA(const WCHAR * string, UINT32 stringLength, IDWriteTextFormat  textFormat, const D2D1_RECT_F * layoutRect, ID2D1Brush  defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode);
    void DrawTextLayout(D2D1_POINT_2F origin, IDWriteTextLayout  textLayout, ID2D1Brush  defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options);
    void DrawGlyphRun(D2D1_POINT_2F baselineOrigin, const DWRITE_GLYPH_RUN * glyphRun, ID2D1Brush  foregroundBrush, DWRITE_MEASURING_MODE measuringMode);
    void SetTransform(const D2D1_MATRIX_3X2_F * transform);
    void GetTransform(D2D1_MATRIX_3X2_F * transform);
    void SetAntialiasMode(D2D1_ANTIALIAS_MODE antialiasMode);
    D2D1_ANTIALIAS_MODE GetAntialiasMode();
    void SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode);
    D2D1_TEXT_ANTIALIAS_MODE GetTextAntialiasMode();
    void SetTextRenderingParams(IDWriteRenderingParams  textRenderingParams);
    void GetTextRenderingParams(IDWriteRenderingParams * textRenderingParams);
    void SetTags(D2D1_TAG tag1, D2D1_TAG tag2);
    void GetTags(D2D1_TAG * tag1, D2D1_TAG * tag2);
    void PushLayer(const D2D1_LAYER_PARAMETERS * layerParameters, ID2D1Layer  layer);
    void PopLayer();
    HRESULT Flush(D2D1_TAG * tag1, D2D1_TAG * tag2);
    void SaveDrawingState(ID2D1DrawingStateBlock  drawingStateBlock);
    void RestoreDrawingState(ID2D1DrawingStateBlock  drawingStateBlock);
    void PushAxisAlignedClip(const D2D1_RECT_F * clipRect, D2D1_ANTIALIAS_MODE antialiasMode);
    void PopAxisAlignedClip();
    void Clear(const D2D1_COLOR_F * clearColor);
    void BeginDraw();
    HRESULT EndDraw(D2D1_TAG * tag1, D2D1_TAG * tag2);
    D2D1_PIXEL_FORMAT GetPixelFormat();
    void SetDpi(FLOAT dpiX, FLOAT dpiY);
    void GetDpi(FLOAT * dpiX, FLOAT * dpiY);
    D2D1_SIZE_F GetSize();
    D2D1_SIZE_U GetPixelSize();
    UINT32 GetMaximumBitmapSize();
    BOOL IsSupported(const D2D1_RENDER_TARGET_PROPERTIES * renderTargetProperties);
}

interface ID2D1BitmapRenderTarget: ID2D1RenderTarget {
    static immutable iidof = GUID(0x2cd90695, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    HRESULT GetBitmap(ID2D1Bitmap * bitmap);
}

interface ID2D1HwndRenderTarget: ID2D1RenderTarget {
    static immutable iidof = GUID(0x2cd90698, 0x12e2, 0x11dc, [0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9]);
    D2D1_WINDOW_STATE CheckWindowState();
    HRESULT Resize(const D2D1_SIZE_U * pixelSize);
    HWND GetHwnd();
}

interface ID2D1GdiInteropRenderTarget: IUnknown {
    static immutable iidof = GUID(0xe0db51c3, 0x6f77, 0x4bae, [0xb3, 0xd5, 0xe4, 0x75, 0x09, 0xb3, 0x58, 0x38]);
    HRESULT GetDC(D2D1_DC_INITIALIZE_MODE mode, HDC * hdc);
    HRESULT ReleaseDC(const RECT * update);
}

interface ID2D1DCRenderTarget: ID2D1RenderTarget {
    static immutable iidof = GUID(0x1c51bc64, 0xde61, 0x46fd, [0x98, 0x99, 0x63, 0xa5, 0xd8, 0xf0, 0x39, 0x50]);
    HRESULT BindDC(const HDC hDC, const RECT * pSubRect);
}

interface ID2D1Factory: IUnknown {
    static immutable iidof = GUID(0x06152247, 0x6f50, 0x465a, [0x92, 0x45, 0x11, 0x8b, 0xfd, 0x3b, 0x60, 0x07]);
    HRESULT ReloadSystemMetrics();
    void GetDesktopDpi(FLOAT * dpiX, FLOAT * dpiY);
    HRESULT CreateRectangleGeometry(const D2D1_RECT_F * rectangle, ID2D1RectangleGeometry * rectangleGeometry);
    HRESULT CreateRoundedRectangleGeometry(const D2D1_ROUNDED_RECT * roundedRectangle, ID2D1RoundedRectangleGeometry * roundedRectangleGeometry);
    HRESULT CreateEllipseGeometry(const D2D1_ELLIPSE * ellipse, ID2D1EllipseGeometry * ellipseGeometry);
    HRESULT CreateGeometryGroup(D2D1_FILL_MODE fillMode, ID2D1Geometry * geometries, UINT32 geometriesCount, ID2D1GeometryGroup * geometryGroup);
    HRESULT CreateTransformedGeometry(ID2D1Geometry  sourceGeometry, const D2D1_MATRIX_3X2_F * transform, ID2D1TransformedGeometry * transformedGeometry);
    HRESULT CreatePathGeometry(ID2D1PathGeometry * pathGeometry);
    HRESULT CreateStrokeStyle(const D2D1_STROKE_STYLE_PROPERTIES * strokeStyleProperties, const FLOAT * dashes, UINT32 dashesCount, ID2D1StrokeStyle * strokeStyle);
    HRESULT CreateDrawingStateBlock(const D2D1_DRAWING_STATE_DESCRIPTION * drawingStateDescription, IDWriteRenderingParams  textRenderingParams, ID2D1DrawingStateBlock * drawingStateBlock);
    HRESULT CreateWicBitmapRenderTarget(IWICBitmap  target, const D2D1_RENDER_TARGET_PROPERTIES * renderTargetProperties, ID2D1RenderTarget * renderTarget);
    HRESULT CreateHwndRenderTarget(const D2D1_RENDER_TARGET_PROPERTIES * renderTargetProperties, const D2D1_HWND_RENDER_TARGET_PROPERTIES * hwndRenderTargetProperties, ID2D1HwndRenderTarget * hwndRenderTarget);
    HRESULT CreateDxgiSurfaceRenderTarget(IDXGISurface  dxgiSurface, const D2D1_RENDER_TARGET_PROPERTIES * renderTargetProperties, ID2D1RenderTarget * renderTarget);
    HRESULT CreateDCRenderTarget(const D2D1_RENDER_TARGET_PROPERTIES * renderTargetProperties, ID2D1DCRenderTarget * dcRenderTarget);
}

HRESULT D2D1CreateFactory(D2D1_FACTORY_TYPE factoryType, const IID * riid, const D2D1_FACTORY_OPTIONS * pFactoryOptions, void ** ppIFactory);

void D2D1MakeRotateMatrix(FLOAT angle, D2D1_POINT_2F center, D2D1_MATRIX_3X2_F * matrix);

void D2D1MakeSkewMatrix(FLOAT angleX, FLOAT angleY, D2D1_POINT_2F center, D2D1_MATRIX_3X2_F * matrix);

BOOL D2D1IsMatrixInvertible(const D2D1_MATRIX_3X2_F * matrix);

BOOL D2D1InvertMatrix(D2D1_MATRIX_3X2_F * matrix);

HRESULT D2D1CreateFactory(D2D1_FACTORY_TYPE factoryType, const IID * riid, void ** factory);


}
