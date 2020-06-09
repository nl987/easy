help([==[

Description
===========
Sets up easybuild environment variables for sandboxing (i.e. development).


More information
================
]==])

whatis([==[Description: Sets up easybuild environment variables for sandboxing (i.e. development)]==])
whatis([==[Homepage: ]==])

local root = "/users/nl987/scratch/easybuild"
local prod_root = "/opt/apps/easybuild"
local PS1 = "\e[10;37m\@\e[m : \e[0;31m\H\e[m : $PWD: \n\$ "

conflict("ebenv/production")

if not isloaded("tools/EasyBuild") then
    load("tools/EasyBuild")
end

setenv("EASYBUILD_PREFIX", root)
setenv("EASYBUILD_INSTALLPATH", root)
setenv("EASYBUILD_MODULES_TOOL", "Lmod")
setenv("EASYBUILD_MODULE_NAMING_SCHEME", "CategorizedModuleNamingScheme")
setenv("EASYBUILD_ROBOT_PATHS", pathJoin(prod_root, "easybuild-easyconfigs/easybuild/easyconfigs"))
--prepend_path("EASYBUILD_ROBOT_PATHS", pathJoin(prod_root, "ebfiles_repo"))
prepend_path("EASYBUILD_ROBOT_PATHS", pathJoin(root, "uoy-easyconfigs"))
--prepend_path("EASYBUILD_ROBOT_PATHS", pathJoin(root, "nat-easyconfigs"))
prepend_path("EASYBUILD_ROBOT_PATHS", pathJoin(root, "easyconfigs"))
setenv("EASYBUILD_SOURCEPATH", pathJoin(root, "pkg"))
setenv("CFGS1", pathJoin(root, "easybuild-easyconfigs/easybuild/easyconfigs"))
prepend_path("MODULEPATH", pathJoin(root, "modules/all"))
-- Built by hand 
