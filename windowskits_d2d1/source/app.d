//
// add d3d11 to libs in dub.json
//
import std.stdio;
import core.runtime;
import core.sys.windows.windows;
import windowskits.build_10_0_17763_0.d2d1;

extern (Windows)
{
	struct ComPtr(T : IUnknown)
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

		void reset(T newPtr)
		{
			if (ptr)
			{
				ptr.Release();
			}
			ptr = newPtr;
			if (ptr)
			{
				ptr.AddRef();
			}
		}

		bool opCast(V)() const if (is(V == bool))
		{
			return ptr is null ? false : true;
		}
	}
}

// https://docs.microsoft.com/en-us/windows/desktop/direct2d/direct2d-quickstart
struct DemoApp
{
	int m_num = 1234;

	ComPtr!ID2D1Factory m_pDirect2dFactory;
	ComPtr!ID2D1HwndRenderTarget m_pRenderTarget;
	ComPtr!ID2D1SolidColorBrush m_pLightSlateGrayBrush;
	ComPtr!ID2D1SolidColorBrush m_pCornflowerBlueBrush;
	//ComPtr!ID2D1StrokeStyle m_pStrokeStyleCustomOffsetZero;

	// Initialize device-dependent resources.
	HRESULT CreateDeviceResources(HWND hWnd)
	{
		if (!m_pRenderTarget)
		{
			//D2D1_FACTORY_OPTIONS options;
			//options.debugLevel = D2D1_DEBUG_LEVEL_INFORMATION;

			auto hr = D2D1CreateFactory(D2D1_FACTORY_TYPE.SINGLE_THREADED,
					&ID2D1Factory.iidof, null, cast(void**)&m_pDirect2dFactory.ptr);
			if (FAILED(hr))
			{
				return hr;
			}

			RECT rc;
			GetClientRect(hWnd, &rc);

			auto size = D2D1_SIZE_U(rc.right - rc.left, rc.bottom - rc.top);

			auto rtp = D2D1_RENDER_TARGET_PROPERTIES();
			rtp.usage = D2D1_RENDER_TARGET_USAGE.NONE;
			rtp.minLevel = D2D1_FEATURE_LEVEL.DEFAULT;
			rtp.pixelFormat = D2D1_PIXEL_FORMAT(DXGI_FORMAT.UNKNOWN, D2D1_ALPHA_MODE.UNKNOWN);
			rtp.dpiX = 0;
			rtp.dpiY = 0;
			//rtp.type = D2D1_RENDER_TARGET_TYPE.D2D1_RENDER_TARGET_TYPE_DEFAULT;

			auto hrtp = D2D1_HWND_RENDER_TARGET_PROPERTIES(hWnd, size);

			// Create a Direct2D render target.
			hr = m_pDirect2dFactory.CreateHwndRenderTarget(&rtp, &hrtp, &m_pRenderTarget.ptr);
			if (FAILED(hr))
			{
				return hr;
			}

			auto identity = D2D_MATRIX_3X2_F();

			// Create a gray brush.
			auto bp = D2D1_BRUSH_PROPERTIES(1, identity);
			auto gray = D2D1_COLOR_F(0.5f, 0.5f, 0.5f, 1.0f);
			hr = m_pRenderTarget.CreateSolidColorBrush(&gray, &bp, &m_pLightSlateGrayBrush.ptr);
			if (FAILED(hr))
			{
				return hr;
			}
			writeln("create gray brush");

			// Create a blue brush.
			auto blue = D2D1_COLOR_F(0, 0, 1.0f, 1.0f);
			hr = m_pRenderTarget.CreateSolidColorBrush(&blue, &bp, &m_pCornflowerBlueBrush.ptr);
			if (FAILED(hr))
			{
				return hr;
			}
			writeln("create blue brush");
		}

		return S_OK;
	}

	// Release device-dependent resource.
	void DiscardDeviceResources()
	{
		m_pRenderTarget.reset(null);
		m_pLightSlateGrayBrush.reset(null);
		m_pCornflowerBlueBrush.reset(null);
	}

	// Draw content.
	HRESULT OnRender(HWND hWnd) nothrow
	{
		try
		{
			auto hr = CreateDeviceResources(hWnd);
			if (FAILED(hr))
			{
				return hr;
			}

			//D2D1_SIZE_F rtSize = m_pRenderTarget.GetSize();

			m_pRenderTarget.BeginDraw();

			//m_pRenderTarget.SetTransform(D2D1::Matrix3x2F::Identity());

			/*
			float[] dashes = [1.0f, 2.0f, 2.0f, 3.0f, 2.0f, 2.0f];
			auto ssp = D2D1_STROKE_STYLE_PROPERTIES(D2D1_CAP_STYLE.D2D1_CAP_STYLE_FLAT,
					D2D1_CAP_STYLE.D2D1_CAP_STYLE_FLAT,
					D2D1_CAP_STYLE.D2D1_CAP_STYLE_ROUND,
					D2D1_LINE_JOIN.D2D1_LINE_JOIN_MITER, 10.0f,
					D2D1_DASH_STYLE.D2D1_DASH_STYLE_CUSTOM, 0.0f);
			hr = m_pDirect2dFactory.CreateStrokeStyle(&ssp, dashes.ptr,
					cast(uint) dashes.length, &m_pStrokeStyleCustomOffsetZero.ptr);
					*/

			auto white = D2D1_COLOR_F(1, 1, 0, 1);
			m_pRenderTarget.Clear(&white);

			if (true)
			{
				// Draw a grid background.
				auto width = 640;
				auto height = 480;

				for (int x = 0; x < width; x += 10)
				{
					auto s = D2D_POINT_2F(x, 0);
					auto e = D2D_POINT_2F(x, height);
					m_pRenderTarget.DrawLine(s, e, m_pLightSlateGrayBrush.ptr, 0.5f, null);
				}

				for (int y = 0; y < height; y += 10)
				{
					auto s = D2D1_POINT_2F(0, y);
					auto e = D2D1_POINT_2F(width, y);
					m_pRenderTarget.DrawLine(s, e, m_pLightSlateGrayBrush, 0.5f, null);
				}

				/*
			auto rectangle1 = D2D1_RECT_F(rtSize.width / 2 - 50.0f,
					rtSize.height / 2 - 50.0f, rtSize.width / 2 + 50.0f, rtSize.height / 2 + 50.0f);
			// Draw a filled rectangle.
			m_pRenderTarget.FillRectangle(&rectangle1, m_pLightSlateGrayBrush.ptr);

			auto rectangle2 = D2D1_RECT_F(rtSize.width / 2 - 100.0f,
					rtSize.height / 2 - 100.0f, rtSize.width / 2 + 100.0f, rtSize.height / 2
					+ 100.0f);
			// Draw the outline of a rectangle.
			m_pRenderTarget.DrawRectangle(&rectangle2, m_pCornflowerBlueBrush.ptr, 1.0f, null);
			*/
			}

			D2D1_TAG tag1;
			D2D1_TAG tag2;
			hr = m_pRenderTarget.EndDraw(null, null);

			if (hr == D2DERR_RECREATE_TARGET)
			{
				hr = S_OK;
				DiscardDeviceResources();
			}

			return hr;
		}
		catch (Exception ex)
		{
			return E_FAIL;
		}
	}

	// Resize the render target.
	void OnResize(UINT width, UINT height) nothrow
	{
		try
		{
			if (m_pRenderTarget)
			{
				// Note: This method can fail, but it's okay to ignore the
				// error here, because the error will be returned again
				// the next time EndDraw is called.
				auto size = D2D1_SIZE_U(width, height);
				m_pRenderTarget.Resize(&size);
			}
		}
		catch (Exception ex)
		{

		}
	}
}

extern (Windows) LRESULT WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam) nothrow
{
	if (message == WM_CREATE)
	{
		auto pcs = cast(CREATESTRUCT*) lParam;
		auto p = pcs.lpCreateParams;
		try
		{
			SetWindowLongPtrW(hWnd, GWLP_USERDATA, cast(ulong) p);
			return 0;
		}
		catch (Exception e)
		{
			return -1;
		}
	}

	auto pp = GetWindowLongPtrW(hWnd, GWLP_USERDATA);
	auto pDemoApp = cast(DemoApp*) pp;

	switch (message)
	{
	case WM_DESTROY:
		PostQuitMessage(0);
		return 0;

	case WM_SIZE:
		{
			UINT width = LOWORD(lParam);
			UINT height = HIWORD(lParam);
			pDemoApp.OnResize(width, height);
		}
		return 0;

	case WM_DISPLAYCHANGE:
		{
			InvalidateRect(hWnd, NULL, FALSE);
		}
		return 0;

	case WM_PAINT:
		{
			pDemoApp.OnRender(hWnd);
			ValidateRect(hWnd, NULL);
		}
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

	DemoApp demoApp;

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
			&demoApp); // creation parameters
	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);
	if (hWnd == HWND.init)
	{
		return 2;
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
