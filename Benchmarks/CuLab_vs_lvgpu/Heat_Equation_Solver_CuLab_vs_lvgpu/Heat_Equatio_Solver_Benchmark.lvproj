<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="GEMV_Benchmark(CuLab).vi" Type="VI" URL="../GEMV_Benchmark(CuLab).vi"/>
		<Item Name="GEMV_Benchmark(lv_gpu).vi" Type="VI" URL="../GEMV_Benchmark(lv_gpu).vi"/>
		<Item Name="Heat Equation Solver(CuLab).vi" Type="VI" URL="../Heat Equation Solver(CuLab).vi"/>
		<Item Name="Heat Equation Solver(lv_gpu).vi" Type="VI" URL="../Heat Equation Solver(lv_gpu).vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Allocate Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Allocate Memory.vi"/>
				<Item Name="Allocate Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Allocate Memory.vi"/>
				<Item Name="Allocate Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA SGL Device Ptr/Allocate Memory.vi"/>
				<Item Name="Byte Size of CSG.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size of CSG.vi"/>
				<Item Name="Byte Size of SGL.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size of SGL.vi"/>
				<Item Name="Byte Size.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Complex FFT (CSG).vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Complex FFT (CSG).vi"/>
				<Item Name="Create 1D FFT Plan.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Create 1D FFT Plan.vi"/>
				<Item Name="CUDA Device (CUdevice).ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA Device (CUdevice).ctl"/>
				<Item Name="CUDA Device Properties (cudaDeviceProp).ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA Device Properties (cudaDeviceProp).ctl"/>
				<Item Name="CuLab.lvlib" Type="Library" URL="/&lt;vilib&gt;/Ngene/CuLab - GPU Accelerated Toolkit/Toolkit/CuLab.lvlib"/>
				<Item Name="Download 1D Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA SGL Device Ptr/Download 1D Data.vi"/>
				<Item Name="Download 2D Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA SGL Device Ptr/Download 2D Data.vi"/>
				<Item Name="Download Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Download Data.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="FFT.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/FFT.vi"/>
				<Item Name="Free Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Free Memory.vi"/>
				<Item Name="Free Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Free Memory.vi"/>
				<Item Name="Free Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA SGL Device Ptr/Free Memory.vi"/>
				<Item Name="Get Device Count.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Device Count.vi"/>
				<Item Name="Get Device Properties.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Device Properties.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Version Information.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Version Information.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="Initialize Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Initialize Device.vi"/>
				<Item Name="Initialize Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcublas/Initialize Library.vi"/>
				<Item Name="Initialize Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Initialize Library.vi"/>
				<Item Name="Is Value Changed.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Is Value Changed.vim"/>
				<Item Name="LVCUDA Error Code.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/LVCUDA Error Code.ctl"/>
				<Item Name="LVPointDoubleTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointDoubleTypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PDE.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_PDE.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Release Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Release Device.vi"/>
				<Item Name="Release Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcublas/Release Library.vi"/>
				<Item Name="Release Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Release Library.vi"/>
				<Item Name="Reset Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Reset Device.vi"/>
				<Item Name="SGEMM (aAB+bC).vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcublas/SGEMM (aAB+bC).vi"/>
				<Item Name="Synchronize Context.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Synchronize Context.vi"/>
				<Item Name="Synchronize Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Synchronize Device.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Upload 1D Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA SGL Device Ptr/Upload 1D Data.vi"/>
				<Item Name="Upload Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Upload Data.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="xGEMM (General Matrix-Matrix Product).vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcublas/xGEMM (General Matrix-Matrix Product).vi"/>
			</Item>
			<Item Name="cublas64_11.dll" Type="Document" URL="/&lt;resource&gt;/cublas64_11.dll"/>
			<Item Name="cublasLt64_11.dll" Type="Document" URL="/&lt;resource&gt;/cublasLt64_11.dll"/>
			<Item Name="cudart64_110.dll" Type="Document" URL="/&lt;resource&gt;/cudart64_110.dll"/>
			<Item Name="cufft64_10.dll" Type="Document" URL="/&lt;resource&gt;/cufft64_10.dll"/>
			<Item Name="culab64_1_1.dll" Type="Document" URL="/&lt;resource&gt;/culab64_1_1.dll"/>
			<Item Name="CULAB_KEYLIB64.dll" Type="Document" URL="/&lt;resource&gt;/CULAB_KEYLIB64.dll"/>
			<Item Name="CULAB_SKCA64.dll" Type="Document" URL="/&lt;resource&gt;/CULAB_SKCA64.dll"/>
			<Item Name="Get GPU Device Information.lvlib" Type="Library" URL="../subVIs/Get GPU Device Information/Get GPU Device Information.lvlib"/>
			<Item Name="Get GPU Device Information.vi" Type="VI" URL="../subVIs/Get GPU Device Information/Get GPU Device Information.vi"/>
			<Item Name="Heat Equation Solver.lvlib" Type="Library" URL="../subVIs/Heat Equation Solver.lvlib"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nppc64_11.dll" Type="Document" URL="/&lt;resource&gt;/nppc64_11.dll"/>
			<Item Name="nppidei64_11.dll" Type="Document" URL="/&lt;resource&gt;/nppidei64_11.dll"/>
			<Item Name="npps64_11.dll" Type="Document" URL="/&lt;resource&gt;/npps64_11.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
