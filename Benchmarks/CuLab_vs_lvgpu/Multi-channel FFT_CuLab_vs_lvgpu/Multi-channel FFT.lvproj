<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str">This example project computes the 1D FFT of multiple signals simultaneously using a GPU device.</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="subVIs" Type="Folder" URL="../subVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Multi-channel FFT(lvgpu).vi" Type="VI" URL="../Multi-channel FFT(lvgpu).vi"/>
		<Item Name="Multi-channel FFT(CuLab).vi" Type="VI" URL="../Multi-channel FFT(CuLab).vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="CuLab.lvlib" Type="Library" URL="/&lt;vilib&gt;/Ngene/CuLab - GPU Accelerated Toolkit/Toolkit/CuLab.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Byte Size.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size.vi"/>
				<Item Name="Byte Size of CSG.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size of CSG.vi"/>
				<Item Name="Byte Size of SGL.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/utility/Byte Size of SGL.vi"/>
				<Item Name="LVCUDA Error Code.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/LVCUDA Error Code.ctl"/>
				<Item Name="CUDA Device (CUdevice).ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA Device (CUdevice).ctl"/>
				<Item Name="Initialize Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Initialize Device.vi"/>
				<Item Name="Allocate Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Allocate Memory.vi"/>
				<Item Name="Allocate Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Allocate Memory.vi"/>
				<Item Name="Initialize Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Initialize Library.vi"/>
				<Item Name="Create 1D FFT Plan.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Create 1D FFT Plan.vi"/>
				<Item Name="FFT.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/FFT.vi"/>
				<Item Name="Complex FFT (CSG).vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Complex FFT (CSG).vi"/>
				<Item Name="Synchronize Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Synchronize Device.vi"/>
				<Item Name="Synchronize Context.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Synchronize Context.vi"/>
				<Item Name="Release Library.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/Release Library.vi"/>
				<Item Name="Free Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Free Memory.vi"/>
				<Item Name="Free Memory.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Free Memory.vi"/>
				<Item Name="Release Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Release Device.vi"/>
				<Item Name="Reset Device.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Reset Device.vi"/>
				<Item Name="CUDA Device Properties (cudaDeviceProp).ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA Device Properties (cudaDeviceProp).ctl"/>
				<Item Name="Get Device Count.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Device Count.vi"/>
				<Item Name="Get Version Information.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Version Information.vi"/>
				<Item Name="Get Device Properties.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Get Device Properties.vi"/>
				<Item Name="CUFFT Type (cufftType).ctl" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft/CUFFT Type (cufftType).ctl"/>
				<Item Name="Download Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Download Data.vi"/>
				<Item Name="Download 2D Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Download 2D Data.vi"/>
				<Item Name="Upload Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/Upload Data.vi"/>
				<Item Name="Upload 2D Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda/CUDA CSG Device Ptr/Upload 2D Data.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="Is Value Changed.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Is Value Changed.vim"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="cublas64_11.dll" Type="Document" URL="/&lt;resource&gt;/cublas64_11.dll"/>
			<Item Name="CULAB_KEYLIB64.dll" Type="Document" URL="/&lt;resource&gt;/CULAB_KEYLIB64.dll"/>
			<Item Name="CULAB_SKCA64.dll" Type="Document" URL="/&lt;resource&gt;/CULAB_SKCA64.dll"/>
			<Item Name="nppc64_11.dll" Type="Document" URL="/&lt;resource&gt;/nppc64_11.dll"/>
			<Item Name="cublasLt64_11.dll" Type="Document" URL="/&lt;resource&gt;/cublasLt64_11.dll"/>
			<Item Name="cudart64_110.dll" Type="Document" URL="/&lt;resource&gt;/cudart64_110.dll"/>
			<Item Name="nppidei64_11.dll" Type="Document" URL="/&lt;resource&gt;/nppidei64_11.dll"/>
			<Item Name="npps64_11.dll" Type="Document" URL="/&lt;resource&gt;/npps64_11.dll"/>
			<Item Name="culab64_1_1.dll" Type="Document" URL="/&lt;resource&gt;/culab64_1_1.dll"/>
			<Item Name="cufft64_10.dll" Type="Document" URL="/&lt;resource&gt;/cufft64_10.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
