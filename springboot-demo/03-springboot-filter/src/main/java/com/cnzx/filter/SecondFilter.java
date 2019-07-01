package com.cnzx.filter;

import javax.servlet.*;
import java.io.IOException;

public class SecondFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) { }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException,ServletException {
        System.out.println("进入SecondFilter.......");
        arg2.doFilter(arg0, arg1);
        System.out.println("离开SecondFilter.......");
    }

    @Override
    public void destroy() { }
}
