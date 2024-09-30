local oceanspec = {
	package = "iqm",
	author = "excessive",
	version = "latest",
	source = {
		url = "https://github.com/excessive/iqm-exm"
	},

	description = {
		summary = "IQM & EXM model format specs, Blender exporter, and LÖVE loader.",
		detailed = [[
			IQM/EXM specifications
			The IQM specification file here (iqm.txt) is derived from upstream, but with clarifications corresponding with existing implementations of the format (upstream exporter and converter), and as implemented by this exporter.
			The EXM specification is TBD, but currently the only notable change is the usage of the comment field for JSON scene metadata (objects, properties, curves...). The formats are otherwise completely compatible, and will stay as such unless there's a very good reason in the future (perhaps for a v3 format with blend shapes). It's fairly likely that a future version of the exporter will also provide more guarantees for the vertex format in EXM files.
		]],
		homepage = "",
	},

	love = "11.x",

	enhancements = {
		"cpml >= 1.0.0"
	},

}

return oceanspec
