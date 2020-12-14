{ pkgs }:

self: super: {
  zipp = super.zipp.overridePythonAttrs (
    old: {
      propagatedBuildInputs = old.propagatedBuildInputs ++ [
        self.toml
      ];
    }
  );

  nixops = super.nixops.overridePythonAttrs ({ nativeBuildInputs ? [ ], ... }: {
    format = "pyproject";
    nativeBuildInputs = nativeBuildInputs ++ [ self.poetry ];
  });
  lxml = super.lxml.overridePythonAttrs (
    old: {
      propagatedBuildInputs = old.propagatedBuildInputs ++ [
      ];
    }
  );
#  libvirt-python = super.libvirt-python.overridePythonAttrs({ nativeBuildInputs ? [], ... }: {
#    format = "pyproject";
#    nativeBuildInputs = nativeBuildInputs ++ [ pkgs.pkgconfig ];
#    propagatedBuildInputs = [ pkgs.libvirt ];
#  });

}
