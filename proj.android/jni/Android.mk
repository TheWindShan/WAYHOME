LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
				   ../../Classes/WHFunc.cpp \
                   ../../Classes/WHPublic.cpp\
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/MainLayer.cpp \
                   ../../Classes/ControlLayer.cpp \
				   ../../Classes/DisplayLayer.cpp \
				   ../../Classes/GameLayer.cpp \
				   ../../Classes/MapLayer.cpp \
				   ../../Classes/Character.cpp 
                   


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_STATIC_LIBRARIES += cocostudio_static
LOCAL_STATIC_LIBRARIES += cocos_ui_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module,editor-support/cocostudio) 
$(call import-module,ui)  
