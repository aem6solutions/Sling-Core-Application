package com.ttn.sling.ttnbucks.server;

import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.osgi.service.component.ComponentContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: Geetika
 * Date: 28/5/15
 * Time: 2:57 PM
 */

@Component
public class TestFile {
    private Logger log = LoggerFactory.getLogger(getClass());

    @Activate
    protected void activate(ComponentContext context)  throws Exception {

        log.info("inside activate method");

    }
}
