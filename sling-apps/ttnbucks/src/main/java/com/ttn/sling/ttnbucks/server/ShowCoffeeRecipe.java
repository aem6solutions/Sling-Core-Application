package com.ttn.sling.ttnbucks.server;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ValueMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.*;

@Component(label="this is show repcipe",description = "show recipe component")
@Service(ShowCoffeeRecipe.class)
public class ShowCoffeeRecipe {

   // private static final Logger LOGGER = LoggerFactory.getLogger(ShowCoffeeRecipe.class);


 //  List list = new ArrayList();
 Map map=new HashMap();

    Resource resource;

    public ShowCoffeeRecipe() {
    }

    public ShowCoffeeRecipe(Resource resource) {
         this.resource = resource;
    }
    public Map getMap() {
      
        Iterator<Resource> itr = resource.listChildren();
        while (itr.hasNext()) {
            Resource child = itr.next();
            ValueMap valueMap = child.adaptTo(ValueMap.class);
            
          //  LOGGER.info("recipe_name -- "+recipe_name);
            map.put(child.getPath(),valueMap);

        }
        return map;
    }

}
