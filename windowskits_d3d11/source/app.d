//
// add d3d11 to libs in dub.json
//
import core.runtime;
import core.sys.windows.windows;
import windowskits.build_10_0_17763_0.d3d11;

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
	ID3D11Device pDevice;
	D3D_FEATURE_LEVEL level;
	ID3D11DeviceContext pDeviceContext;

	auto result = D3D11CreateDevice(null, D3D_DRIVER_TYPE.D3D_DRIVER_TYPE_HARDWARE,
			null, 0, levels.ptr, cast(uint) levels.length, 7, &pDevice,
			&level, &pDeviceContext);
	if (result != 0)
	{
		return 3;
	}

	// main loop
	MSG msg;
	while (true)
	{
		if (GetMessageW(&msg, null, 0, 0) == 0)
		{
			break;
		}
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return cast(int) msg.wParam;
}
