import std.stdio;
import windowskits.build_10_0_17763_0.dxgi;

struct ComPtr(T)
{
	T ptr;
	alias ptr this;
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
	auto hr = CreateDXGIFactory(&pFactory.uuidof, cast(void**)&pFactory.ptr);
	if (hr != 0)
	{
		writeln("fail");
		return;
	}
}
