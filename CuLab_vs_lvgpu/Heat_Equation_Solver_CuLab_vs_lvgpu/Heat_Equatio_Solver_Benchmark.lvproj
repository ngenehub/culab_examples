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
		<Item Name="GEMM_Only(CuLab).vi" Type="VI" URL="../GEMM_Only(CuLab).vi"/>
		<Item Name="GEMM_Only(lv_gpu).vi" Type="VI" URL="../GEMM_Only(lv_gpu).vi"/>
		<Item Name="Heat Equation Solver(CuLab).vi" Type="VI" URL="../Heat Equation Solver(CuLab).vi"/>
		<Item Name="Heat Equation Solver(lv_gpu).vi" Type="VI" URL="../Heat Equation Solver(lv_gpu).vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="CuLab.lvlib" Type="Library" URL="/&lt;vilib&gt;/Ngene/CuLab - GPU Accelerated Toolkit/Toolkit/CuLab.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="lvcublas.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/lvgpu/lvcublas.lvlib"/>
				<Item Name="lvcuda.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/lvgpu/lvcuda.lvlib"/>
				<Item Name="lvcufft.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/lvgpu/lvcufft.lvlib"/>
				<Item Name="lvgpusdk.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/lvgpu/lvgpusdk.lvlib"/>
				<Item Name="LVPointDoubleTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointDoubleTypeDef.ctl"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PDE.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_PDE.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
			</Item>
			<Item Name="cublas64_11.dll" Type="Document" URL="cublas64_11.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="cudart64_110.dll" Type="Document" URL="cudart64_110.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="cufft64_10.dll" Type="Document" URL="cufft64_10.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="culab64_1_1.dll" Type="Document" URL="culab64_1_1.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Get GPU Device Information.lvlib" Type="Library" URL="../subVIs/Get GPU Device Information/Get GPU Device Information.lvlib"/>
			<Item Name="Get GPU Device Information.vi" Type="VI" URL="../subVIs/Get GPU Device Information/Get GPU Device Information.vi"/>
			<Item Name="Heat Equation Solver.lvlib" Type="Library" URL="../subVIs/Heat Equation Solver.lvlib"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="lvgpu64.dll" Type="Document" URL="/&lt;resource&gt;/lvgpu/lvgpu64.dll"/>
			<Item Name="nppidei64_11.dll" Type="Document" URL="nppidei64_11.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="npps64_11.dll" Type="Document" URL="npps64_11.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
