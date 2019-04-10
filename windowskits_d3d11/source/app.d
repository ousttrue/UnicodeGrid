//
// add d3d11 to libs in dub.json
//
import core.runtime;
import core.sys.windows.windows;
import windowskits.build_10_0_17763_0.d3d11;

struct ComPtr(T)
{
	T ptr;
	alias ptr this; // cannot code completion
	this(this) // post-blit
	{
		if (ptr)
			ptr.AddRef();
	}

	~this() // destructor
	{
		if (ptr)
			ptr.Release();
	}

	bool opCast(V)() const if (is(V == bool))
	{
		return ptr ? true : false;
	}
}

extern (Windows) LRESULT WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam) nothrow
{
	switch (message)
	{
	case WM_DESTROY:
		PostQuitMessage(0);
		return 0;

	default:
		return DefWindowProcW(hWnd, message, wParam, lParam);
	}
}

extern (Windows) int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
		LPSTR lpCmdLine, int nCmdShow)
{
	Runtime.initialize();
	scope (exit)
		Runtime.terminate();

	wstring appClass = "ClassName";
	wstring appName = "WindowName";

	WNDCLASSW wndclass;
	wndclass.style = CS_HREDRAW | CS_VREDRAW;
	wndclass.lpfnWndProc = &WndProc;
	wndclass.cbClsExtra = 0;
	wndclass.cbWndExtra = 0;
	wndclass.hInstance = hInstance;
	wndclass.hIcon = LoadIconW(cast(void*) null, cast(wchar*) IDI_APPLICATION);
	wndclass.hCursor = LoadCursorW(cast(void*) null, cast(wchar*) IDC_ARROW);
	wndclass.hbrBackground = null; //cast(HBRUSH)GetStockObject(WHITE_BRUSH);
	wndclass.lpszMenuName = null;
	wndclass.lpszClassName = appClass.ptr;
	if (!RegisterClassW(&wndclass))
	{
		return 1;
	}

	auto hWnd = CreateWindowW(appClass.ptr, // window class name
			appName.ptr, // window caption
			WS_OVERLAPPEDWINDOW, // window style
			CW_USEDEFAULT, // initial x position
			CW_USEDEFAULT, // initial y position
			CW_USEDEFAULT, // initial x size
			CW_USEDEFAULT, // initial y size
			null, // parent window handle
			null, // window menu handle
			hInstance, // program instance handle
			null); // creation parameters
	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);
	if (hWnd == HWND.init)
	{
		return 2;
	}

	D3D_FEATURE_LEVEL[] levels = [
		D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_11_1, D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_11_0,
	];
	ComPtr!ID3D11Device pDevice;
	D3D_FEATURE_LEVEL level;
	ComPtr!ID3D11DeviceContext pDeviceContext;

	DXGI_SWAP_CHAIN_DESC scDesc;
	scDesc.BufferCount = 1;
	scDesc.BufferDesc.Width = 0;
	scDesc.BufferDesc.Height = 0;
	scDesc.BufferDesc.Format = DXGI_FORMAT.DXGI_FORMAT_R8G8B8A8_UNORM_SRGB;
	scDesc.BufferDesc.RefreshRate.Numerator = 60;
	scDesc.BufferDesc.RefreshRate.Denominator = 1;
	scDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
	scDesc.OutputWindow = hWnd;
	scDesc.SampleDesc.Count = 1;
	scDesc.SampleDesc.Quality = 0;
	scDesc.Windowed = TRUE;

	ComPtr!IDXGISwapChain pSwapChain;

	auto result = D3D11CreateDeviceAndSwapChain(null, D3D_DRIVER_TYPE.D3D_DRIVER_TYPE_HARDWARE, null, 0,
			levels.ptr, cast(uint) levels.length, D3D11_SDK_VERSION, &scDesc,
			&pSwapChain.ptr, &pDevice.ptr, &level, &pDeviceContext.ptr);
	if (result != 0)
	{
		return 3;
	}

	// main loop
	ComPtr!ID3D11RenderTargetView pRenderTargetView;
	MSG msg;
	while (true)
	{
		if (GetMessageW(&msg, null, 0, 0) == 0)
		{
			break;
		}
		TranslateMessage(&msg);
		DispatchMessage(&msg);

		// get backbuffer
		if (pRenderTargetView.ptr is null)
		{
			ComPtr!ID3D11Texture2D pBackBuffer;
			if (pSwapChain.GetBuffer(0, &ID3D11Texture2D.uuidof,
					cast(void**)&pBackBuffer.ptr) != 0)
			{
				return 4;
			}

			if (pDevice.CreateRenderTargetView(pBackBuffer.ptr, null, &pRenderTargetView.ptr) != 0)
			{
				return 5;
			}
		}

		auto renderTargets = [pRenderTargetView.ptr];
		pDeviceContext.OMSetRenderTargets(cast(uint) renderTargets.length, renderTargets.ptr, null);

		float[4] clearColor = [0.0f, 0.0f, 1.0f, 0.0f];
		pDeviceContext.ClearRenderTargetView(pRenderTargetView.ptr, clearColor);

		pDeviceContext.Flush();

		pSwapChain.Present(0, 0);
	}
	return cast(int) msg.wParam;
}
