# ----------------------------------------------------------------------------
#  导入当前的版本号，只读取第一行
# ----------------------------------------------------------------------------
FILE(STRINGS "${CMAKE_CURRENT_SOURCE_DIR}/version_prefix.txt" CMAKE_CarrotSLAM_VERSION_NUMBER LIMIT_COUNT 1)

# 例如: "0.5.1"
STRING(REGEX MATCHALL "[0-9]+" CMAKE_CarrotSLAM_VERSION_PARTS "${CMAKE_CarrotSLAM_VERSION_NUMBER}")

LIST(GET CMAKE_CarrotSLAM_VERSION_PARTS 0 CMAKE_CarrotSLAM_VERSION_NUMBER_MAJOR)
LIST(GET CMAKE_CarrotSLAM_VERSION_PARTS 1 CMAKE_CarrotSLAM_VERSION_NUMBER_MINOR)
LIST(GET CMAKE_CarrotSLAM_VERSION_PARTS 2 CMAKE_CarrotSLAM_VERSION_NUMBER_PATCH)
SET(CMAKE_CarrotSLAM_FULL_VERSION "${CMAKE_CarrotSLAM_VERSION_NUMBER_MAJOR}.${CMAKE_CarrotSLAM_VERSION_NUMBER_MINOR}.${CMAKE_CarrotSLAM_VERSION_NUMBER_PATCH}")

IF(WIN32)
	SET(CarrotSLAM_DLL_VERSION_POSTFIX "${CMAKE_CarrotSLAM_VERSION_NUMBER_MAJOR}${CMAKE_CarrotSLAM_VERSION_NUMBER_MINOR}${CMAKE_CarrotSLAM_VERSION_NUMBER_PATCH}")
ELSE(WIN32)
	SET(CarrotSLAM_DLL_VERSION_POSTFIX "")
ENDIF(WIN32)
