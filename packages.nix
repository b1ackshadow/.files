{ pkgs, nixpkgs-unfree, nixgl,  ...}:

{
	environment.systemPackages = with pkgs; [
		acpi 	
		nestopia
		simplenes

		piper # mouse rgb
                git

		
	] ++ [
		#nixgl.packages.x86_64-linux.nixVulkanNvidia
	];
}


