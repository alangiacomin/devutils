@echo off
setlocal enabledelayedexpansion

for /D %%d in (resources\js\components\*.*) do (
  set name=%%~nd
  set indexFile=resources\js\components\!name!\index.js
  (
    echo import { lazyImport } from '../../common/utils';
    echo.
    echo const !name! = lazyImport^(^(^) =^> import^('./!name!'^)^);
    echo.
    echo export default !name!;
  ) >!indexFile!
)
