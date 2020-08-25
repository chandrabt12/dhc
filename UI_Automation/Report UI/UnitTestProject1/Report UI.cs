using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium.Appium.Windows;
using OpenQA.Selenium.Remote;

namespace RepeortUI
{
    [TestClass]
    public class ReportUI
    {
        private TimeSpan appCapabilities;
        private object session;

        [Obsolete]
        public void TestMethod1()
        {
            DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
            desiredCapabilities.SetCapability("app", @"D:\Legrand\Apps-DHC-Scripts\DevicesComparer\DLMComparer.UI\bin\Debug\netcoreapp3.1\DLMComparer.UI.exe");

            var winDriver = new WindowsDriver<WindowsElement>(new Uri("http://127.0.0.1:4723/"), appCapabilities);


            //Generate File with Project Name 
            winDriver.FindElementByAccessibilityId("ProjectName").SendKeys("Test");
            winDriver.FindElementByName("Generate").Click();
            winDriver.FindElementByAccessibilityId("FileNameControlHost").SendKeys("ProjectName");
            winDriver.FindElementByName("Save").Click();
            winDriver.FindElementByName("Clean all").Click();
            //Generate File with Project Location 
            winDriver.FindElementByAccessibilityId("ProjectLocation").SendKeys("Test");
            winDriver.FindElementByName("Generate").Click();
            winDriver.FindElementByAccessibilityId("FileNameControlHost").SendKeys("ProjectLocation");
            winDriver.FindElementByName("Save").Click();
            winDriver.FindElementByName("Clean all").Click();
            //Generate File with Case Number
            winDriver.FindElementByAccessibilityId("CaseNumber").SendKeys("Test");
            winDriver.FindElementByName("Generate").Click();
            winDriver.FindElementByAccessibilityId("FileNameControlHost").SendKeys("CaseNumber");
            winDriver.FindElementByName("Save").Click();
            winDriver.FindElementByName("Clean all").Click();
            // Add Cabinet And DLM Files
            winDriver.FindElementByAccessibilityId("ProjectName").SendKeys("Test1");
            winDriver.FindElementByAccessibilityId("ProjectLocation").SendKeys("Test1");
            winDriver.FindElementByAccessibilityId("CaseNumber").SendKeys("Test1");
            winDriver.FindElementByAccessibilityId("AddCabinetTitle").SendKeys("Test1");
            winDriver.FindElementByName("Add Origin").Click();
            winDriver.FindElementByAccessibilityId("0").Click();
            winDriver.FindElementByAccessibilityId("1").Click();
            winDriver.FindElementByAccessibilityId("Add Comparison").Click();
            winDriver.FindElementByName("Generate").Click();
            winDriver.FindElementByAccessibilityId("FileNameControlHost").SendKeys("Test Report");
            winDriver.FindElementByName("Save").Click();
            winDriver.FindElementByName("Test Report.xlsx");
            Assert.AreEqual("Test Report.xlsx", "Test Report.xlx");











        }
    }
}
