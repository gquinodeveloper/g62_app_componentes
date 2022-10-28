import 'package:flutter/material.dart';

class ListviewView extends StatefulWidget {
  const ListviewView({Key? key}) : super(key: key);

  @override
  State<ListviewView> createState() => _ListviewViewState();
}

class _ListviewViewState extends State<ListviewView> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        controller: controller,
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
              ),
            ),
            title: Text("Gustavo Quino"),
            subtitle: Text("gquinoc@valtx.pe"),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
