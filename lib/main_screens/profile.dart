import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(children: [
        Container(
          height: 220,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.yellow, Colors.brown])),
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              expandedHeight: 140,
              flexibleSpace: LayoutBuilder(builder: (context, constraints) {
                return FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    opacity: constraints.biggest.height <= 120 ? 1 : 0,
                    child: const Text(
                      'Account',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  background: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.brown])),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('images/inapp/guest.jpg'),
                          ),
                        ),
                        Text(
                          'GUEST',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Cart',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            color: Colors.yellow,
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Orders',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Wishlist',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                          child: Image(image: AssetImage('images/inapp/logo.jpg')),
                        ),
                      
                    const PeofileHeader(headerlabel: '  Account Info  '),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: const Column(
                          children: [
                            RepeatedListTile(
                                title: 'Email Address',
                                subtitle: 'example@example.com',
                                icon: Icons.email),
                            YellowDivider(),
                            RepeatedListTile(
                              title: 'Phone No',
                              icon: Icons.phone,
                              subtitle: '+8801111111',
                            ),
                            YellowDivider(),
                            RepeatedListTile(
                              title: 'Address',
                              icon: Icons.location_pin,
                              subtitle: 'example:Dhaka, Bangldesh',
                            )
                          ],
                        ),
                      ),
                    ),
                    const PeofileHeader(headerlabel: '  Account setting  '),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            RepeatedListTileNosub(
                              title: "Edit Profile",
                              icon: Icons.edit,
                              onPressed: () {},
                            ),
                            const YellowDivider(),
                            RepeatedListTileNosub(
                              title: 'Change Password',
                              icon: Icons.lock,
                              onPressed: () {},
                            ),
                            const YellowDivider(),
                            RepeatedListTileNosub(
                              title: 'Log Out',
                              icon: Icons.logout,
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/welcome_screen');
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                                    ],
                                  ),
                  ),],),
            )
          ],
        ),
      ]),
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onPressed;

  const RepeatedListTile({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}

class RepeatedListTileNosub extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;

  const RepeatedListTileNosub({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }
}

class PeofileHeader extends StatelessWidget {
  final String headerlabel;
  const PeofileHeader({
    super.key,
    required this.headerlabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerlabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
