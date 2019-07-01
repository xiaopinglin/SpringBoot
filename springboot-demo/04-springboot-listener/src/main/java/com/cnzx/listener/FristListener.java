package com.cnzx.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class FristListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {

    }
    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        System.out.println("Listener...Init....");
    }
}
