import std.stdio;
import windowskits.build_10_0_17763_0.dxgi;

void main()
{
	// Create a DXGIFactory object.
	IDXGIFactory pFactory;
	auto hr = CreateDXGIFactory(&pFactory.uuidof, cast(void**)&pFactory);
	if (hr != 0)
	{
		writeln("fail");
		return;
	}

	scope (exit)
		pFactory.Release();

	return;
}
