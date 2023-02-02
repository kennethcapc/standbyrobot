import os
# from appium import webdriver123
import time
def connect_to_python():
    user="student"
    password = "Password123"
    return user, password

def current_directory():
    current_dir = os.getcwd()+"./chromedriver.exe"

    return current_dir

desired_caps=dict(
    deviceName= 'Android',
    platformName = ' Android',
    browserName = 'Chrome' 
)
# def appium():
#     driver = webdriver.Remote('http://127.0.0.1.4723/wd/hub', desired_caps)
#     driver.get("http//google.com")
#     print(driver.title)
#     time.sleep(2)
#     driver.quit