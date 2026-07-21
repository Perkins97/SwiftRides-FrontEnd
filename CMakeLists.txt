cmake_minimum_required(VERSION 3.16)

project(SwiftRides VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_XCODE_ATTRIBUTE_UIRequiresFullScreen YES)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appSwiftRides
    main.cpp
)

qt_add_qml_module(appSwiftRides
    URI SwiftRides
    VERSION 1.0
    QML_FILES
        App.qml
        Main.qml
        initialization-auth/SplashScreen.qml
        initialization-auth/LoginScreen.qml
        initialization-auth/SignUp.qml
        passenger/PassengerScreen.qml
        passenger/RideStatus.qml
        Driver/DriverDashboard.qml
        Driver/RideDetail.qml
        Driver/DriverAnalytics.qml
        SharedComponents/MapView.qml
        SharedComponents/RequestForm.qml
        SharedComponents/ChartView.qml
        Backend/DataModels.qml
        Backend/ApiConnector.js
    RESOURCES
        assets/icons-images.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSwiftRides PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSwiftRides
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSwiftRides
    PRIVATE Qt6::Quick
)

install(TARGETS appSwiftRides
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
