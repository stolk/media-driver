# Copyright (c) 2017-2023, Intel Corporation
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

set(TMP_SOURCES_
    ${CMAKE_CURRENT_LIST_DIR}/media_user_setting_configure.cpp
    ${CMAKE_CURRENT_LIST_DIR}/media_user_setting_definition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/media_user_setting.cpp
)

set(SOFTLET_MOS_COMMON_SOURCES_
    ${SOFTLET_MOS_COMMON_SOURCES_}
    ${TMP_SOURCES_}
)

set(TMP_SHARED_SOURCES_
    ${CMAKE_CURRENT_LIST_DIR}/media_user_setting_value.cpp
)

set(SOFTLET_COMMON_HAL_DDI_SHARED_SOURCES_
    ${SOFTLET_COMMON_HAL_DDI_SHARED_SOURCES_}
    ${TMP_SHARED_SOURCES_}
)

source_group( "mos_softlet" FILES ${TMP_SOURCES_})
source_group( "Hal_DDI_Shared" FILES ${TMP_SHARED_SOURCES_})