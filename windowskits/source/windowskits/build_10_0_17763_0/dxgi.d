// pycpptool generated: 2019-04-14 19:18:04.015771
module windowskits.build_10_0_17763_0.dxgi;

import core.sys.windows.windef;
import core.sys.windows.com;
public import windowskits.build_10_0_17763_0.dxgicommon;
public import windowskits.build_10_0_17763_0.dxgitype;

extern(Windows){

alias IID = GUID;

alias DXGI_USAGE = UINT;

struct DXGI_FRAME_STATISTICS{
  UINT PresentCount;
  UINT PresentRefreshCount;
  UINT SyncRefreshCount;
  LARGE_INTEGER SyncQPCTime;
  LARGE_INTEGER SyncGPUTime;
}

struct DXGI_MAPPED_RECT{
  INT Pitch;
  BYTE * pBits;
}

struct DXGI_ADAPTER_DESC{
  WCHAR [128] Description;
  UINT VendorId;
  UINT DeviceId;
  UINT SubSysId;
  UINT Revision;
  SIZE_T DedicatedVideoMemory;
  SIZE_T DedicatedSystemMemory;
  SIZE_T SharedSystemMemory;
  LUID AdapterLuid;
}

struct DXGI_OUTPUT_DESC{
  WCHAR [32] DeviceName;
  RECT DesktopCoordinates;
  BOOL AttachedToDesktop;
  DXGI_MODE_ROTATION Rotation;
  HMONITOR Monitor;
}

struct DXGI_SHARED_RESOURCE{
  HANDLE Handle;
}

enum DXGI_RESIDENCY {
    DXGI_RESIDENCY_FULLY_RESIDENT = 0x00000001,
    DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY = 0x00000002,
    DXGI_RESIDENCY_EVICTED_TO_DISK = 0x00000003,
}

struct DXGI_SURFACE_DESC{
  UINT Width;
  UINT Height;
  DXGI_FORMAT Format;
  DXGI_SAMPLE_DESC SampleDesc;
}

enum DXGI_SWAP_EFFECT {
    DXGI_SWAP_EFFECT_DISCARD = 0x00000000,
    DXGI_SWAP_EFFECT_SEQUENTIAL = 0x00000001,
    DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL = 0x00000003,
    DXGI_SWAP_EFFECT_FLIP_DISCARD = 0x00000004,
}

enum DXGI_SWAP_CHAIN_FLAG {
    DXGI_SWAP_CHAIN_FLAG_NONPREROTATED = 0x00000001,
    DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 0x00000002,
    DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE = 0x00000004,
    DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT = 0x00000008,
    DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER = 0x00000016,
    DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY = 0x00000032,
    DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT = 0x00000064,
    DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER = 0x00000128,
    DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO = 0x00000256,
    DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO = 0x00000512,
    DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED = 0x00001024,
    DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING = 0x00002048,
    DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 0x00004096,
}

struct DXGI_SWAP_CHAIN_DESC{
  DXGI_MODE_DESC BufferDesc;
  DXGI_SAMPLE_DESC SampleDesc;
  DXGI_USAGE BufferUsage;
  UINT BufferCount;
  HWND OutputWindow;
  BOOL Windowed;
  DXGI_SWAP_EFFECT SwapEffect;
  UINT Flags;
}

interface IDXGIObject: IUnknown {
    static immutable iidof = GUID(0xaec22fb8, 0x76f3, 0x4639, [0x9b, 0xe0, 0x28, 0xeb, 0x43, 0xa6, 0x7a, 0x2e]);
    HRESULT SetPrivateData(const GUID * Name, UINT DataSize, const void * pData);
    HRESULT SetPrivateDataInterface(const GUID * Name, const IUnknown * pUnknown);
    HRESULT GetPrivateData(const GUID * Name, UINT * pDataSize, void * pData);
    HRESULT GetParent(const IID * riid, void ** ppParent);
}

interface IDXGIDeviceSubObject: IDXGIObject {
    static immutable iidof = GUID(0x3d3e0379, 0xf9de, 0x4d58, [0xbb, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6]);
    HRESULT GetDevice(const IID * riid, void ** ppDevice);
}

interface IDXGIResource: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x035f3ab4, 0x482e, 0x4e50, [0xb4, 0x1f, 0x8a, 0x7f, 0x8b, 0xd8, 0x96, 0x0b]);
    HRESULT GetSharedHandle(HANDLE * pSharedHandle);
    HRESULT GetUsage(DXGI_USAGE * pUsage);
    HRESULT SetEvictionPriority(UINT EvictionPriority);
    HRESULT GetEvictionPriority(UINT * pEvictionPriority);
}

interface IDXGIKeyedMutex: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x9d8e1289, 0xd7b3, 0x465f, [0x81, 0x26, 0x25, 0x0e, 0x34, 0x9a, 0xf8, 0x5d]);
    HRESULT AcquireSync(UINT64 Key, DWORD dwMilliseconds);
    HRESULT ReleaseSync(UINT64 Key);
}

interface IDXGISurface: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0xcafcb56c, 0x6ac3, 0x4889, [0xbf, 0x47, 0x9e, 0x23, 0xbb, 0xd2, 0x60, 0xec]);
    HRESULT GetDesc(DXGI_SURFACE_DESC * pDesc);
    HRESULT Map(DXGI_MAPPED_RECT * pLockedRect, UINT MapFlags);
    HRESULT Unmap();
}

interface IDXGISurface1: IDXGISurface {
    static immutable iidof = GUID(0x4ae63092, 0x6327, 0x4c1b, [0x80, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86]);
    HRESULT GetDC(BOOL Discard, HDC * phdc);
    HRESULT ReleaseDC(RECT * pDirtyRect);
}

interface IDXGIAdapter: IDXGIObject {
    static immutable iidof = GUID(0x2411e7e1, 0x12ac, 0x4ccf, [0xbd, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0]);
    HRESULT EnumOutputs(UINT Output, IDXGIOutput * ppOutput);
    HRESULT GetDesc(DXGI_ADAPTER_DESC * pDesc);
    HRESULT CheckInterfaceSupport(const GUID * InterfaceName, LARGE_INTEGER * pUMDVersion);
}

interface IDXGIOutput: IDXGIObject {
    static immutable iidof = GUID(0xae02eedb, 0xc735, 0x4690, [0x8d, 0x52, 0x5a, 0x8d, 0xc2, 0x02, 0x13, 0xaa]);
    HRESULT GetDesc(DXGI_OUTPUT_DESC * pDesc);
    HRESULT GetDisplayModeList(DXGI_FORMAT EnumFormat, UINT Flags, UINT * pNumModes, DXGI_MODE_DESC * pDesc);
    HRESULT FindClosestMatchingMode(const DXGI_MODE_DESC * pModeToMatch, DXGI_MODE_DESC * pClosestMatch, IUnknown  pConcernedDevice);
    HRESULT WaitForVBlank();
    HRESULT TakeOwnership(IUnknown  pDevice, BOOL Exclusive);
    void ReleaseOwnership();
    HRESULT GetGammaControlCapabilities(DXGI_GAMMA_CONTROL_CAPABILITIES * pGammaCaps);
    HRESULT SetGammaControl(const DXGI_GAMMA_CONTROL * pArray);
    HRESULT GetGammaControl(DXGI_GAMMA_CONTROL * pArray);
    HRESULT SetDisplaySurface(IDXGISurface  pScanoutSurface);
    HRESULT GetDisplaySurfaceData(IDXGISurface  pDestination);
    HRESULT GetFrameStatistics(DXGI_FRAME_STATISTICS * pStats);
}

interface IDXGISwapChain: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x310d36a0, 0xd2e7, 0x4c0a, [0xaa, 0x04, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a]);
    HRESULT Present(UINT SyncInterval, UINT Flags);
    HRESULT GetBuffer(UINT Buffer, const IID * riid, void ** ppSurface);
    HRESULT SetFullscreenState(BOOL Fullscreen, IDXGIOutput  pTarget);
    HRESULT GetFullscreenState(BOOL * pFullscreen, IDXGIOutput * ppTarget);
    HRESULT GetDesc(DXGI_SWAP_CHAIN_DESC * pDesc);
    HRESULT ResizeBuffers(UINT BufferCount, UINT Width, UINT Height, DXGI_FORMAT NewFormat, UINT SwapChainFlags);
    HRESULT ResizeTarget(const DXGI_MODE_DESC * pNewTargetParameters);
    HRESULT GetContainingOutput(IDXGIOutput * ppOutput);
    HRESULT GetFrameStatistics(DXGI_FRAME_STATISTICS * pStats);
    HRESULT GetLastPresentCount(UINT * pLastPresentCount);
}

interface IDXGIFactory: IDXGIObject {
    static immutable iidof = GUID(0x7b7166ec, 0x21c7, 0x44ae, [0xb2, 0x1a, 0xc9, 0xae, 0x32, 0x1a, 0xe3, 0x69]);
    HRESULT EnumAdapters(UINT Adapter, IDXGIAdapter * ppAdapter);
    HRESULT MakeWindowAssociation(HWND WindowHandle, UINT Flags);
    HRESULT GetWindowAssociation(HWND * pWindowHandle);
    HRESULT CreateSwapChain(IUnknown  pDevice, DXGI_SWAP_CHAIN_DESC * pDesc, IDXGISwapChain * ppSwapChain);
    HRESULT CreateSoftwareAdapter(HMODULE Module, IDXGIAdapter * ppAdapter);
}

HRESULT CreateDXGIFactory(const IID * riid, void ** ppFactory);

HRESULT CreateDXGIFactory1(const IID * riid, void ** ppFactory);

interface IDXGIDevice: IDXGIObject {
    static immutable iidof = GUID(0x54ec77fa, 0x1377, 0x44e6, [0x8c, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c]);
    HRESULT GetAdapter(IDXGIAdapter * pAdapter);
    HRESULT CreateSurface(const DXGI_SURFACE_DESC * pDesc, UINT NumSurfaces, DXGI_USAGE Usage, const DXGI_SHARED_RESOURCE * pSharedResource, IDXGISurface * ppSurface);
    HRESULT QueryResourceResidency(IUnknown * ppResources, DXGI_RESIDENCY * pResidencyStatus, UINT NumResources);
    HRESULT SetGPUThreadPriority(INT Priority);
    HRESULT GetGPUThreadPriority(INT  pPriority);
}

enum DXGI_ADAPTER_FLAG {
    DXGI_ADAPTER_FLAG_NONE = 0x00000000,
    DXGI_ADAPTER_FLAG_REMOTE = 0x00000001,
    DXGI_ADAPTER_FLAG_SOFTWARE = 0x00000002,
    DXGI_ADAPTER_FLAG_FORCE_DWORD = 0xffffffff,
}

struct DXGI_ADAPTER_DESC1{
  WCHAR [128] Description;
  UINT VendorId;
  UINT DeviceId;
  UINT SubSysId;
  UINT Revision;
  SIZE_T DedicatedVideoMemory;
  SIZE_T DedicatedSystemMemory;
  SIZE_T SharedSystemMemory;
  LUID AdapterLuid;
  UINT Flags;
}

struct DXGI_DISPLAY_COLOR_SPACE{
  FLOAT [8][2] PrimaryCoordinates;
  FLOAT [16][2] WhitePoints;
}

interface IDXGIFactory1: IDXGIFactory {
    static immutable iidof = GUID(0x770aae78, 0xf26f, 0x4dba, [0xa8, 0x29, 0x25, 0x3c, 0x83, 0xd1, 0xb3, 0x87]);
    HRESULT EnumAdapters1(UINT Adapter, IDXGIAdapter1 * ppAdapter);
    BOOL IsCurrent();
}

interface IDXGIAdapter1: IDXGIAdapter {
    static immutable iidof = GUID(0x29038f61, 0x3839, 0x4626, [0x91, 0xfd, 0x08, 0x68, 0x79, 0x01, 0x1a, 0x05]);
    HRESULT GetDesc1(DXGI_ADAPTER_DESC1 * pDesc);
}

interface IDXGIDevice1: IDXGIDevice {
    static immutable iidof = GUID(0x77db970f, 0x6276, 0x48ba, [0xba, 0x28, 0x07, 0x01, 0x43, 0xb4, 0x39, 0x2c]);
    HRESULT SetMaximumFrameLatency(UINT MaxLatency);
    HRESULT GetMaximumFrameLatency(UINT * pMaxLatency);
}


}
