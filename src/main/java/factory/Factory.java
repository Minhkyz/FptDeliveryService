package factory;

import dao.*;
import impl.*;

public class Factory {
    public static UserDAO getInstanceUserDao(){
        return new UserDaoImpl();
    }
    public static RoleDAO getInstanceRoleDao(){
        return new RoleDaoImpl();
    }
    public static ChatDAO getInstanceChatDao(){
        return new ChatDaoImpl();
    }
    public static ItemsDAO getInstanceItemsDao(){
        return new ItemsDaoImpl();
    }
    public static EmailDAO getInstanceEmailDao(){
        return new EmailDaoImpl();
    }
    public static OrderDAO getInstanceOrderDao(){
        return new OrderDaoImpl();
    }

}
