import std.stdio;
import windowskits.build_10_0_17763_0.dxgi;
import std.algorithm.searching;

struct ComPtr(T)
{
	T ptr;
	//alias ptr this; // cannot code completion
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

void main()
{
	ComPtr!IDXGIFactory pFactory;
	auto hr = CreateDXGIFactory(&IDXGIFactory.iidof, cast(void**)&pFactory.ptr);
	if (hr != 0)
	{
		writeln("fail");
		return;
	}

	for (uint i = 0;; ++i)
	{
		ComPtr!IDXGIAdapter pAdapter;
		hr = pFactory.ptr.EnumAdapters(i, &pAdapter.ptr);
		if (hr != 0)
		{
			break;
		}

		DXGI_ADAPTER_DESC desc;
		pAdapter.ptr.GetDesc(&desc);

		auto len = desc.Description[].countUntil(0); // require static array to slice

		writeln(desc.Description[0 .. len]);
	}
}
