import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/ui/shared/loading.dart';

import '../bloc/authentication_bloc.dart';
import '../bloc/groups_bloc.dart';
import '../ui/groups/card_background_image.dart';
import '../view/groups_feed.dart';
import 'groups_api_provider.dart';

class DiscoveryView extends StatelessWidget {
  const DiscoveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var authState = BlocProvider.of<AuthenticationBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Discovery")),
      body: BlocProvider(
        create: (context) => GroupsBloc(GroupsApiProvider(Dio()))
          ..add(GroupsEvent.onGetAll(
              authState.state.authentication!.access_token!)),
        child: BlocBuilder<GroupsBloc, GroupsState>(
          builder: (context, state) {
            return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: state.groups.length,
                    itemBuilder: (context, index) {
                      return CardBackgroundImage(
                        title: "${state.groups[index].creator! ? "👑" : "👥"} ${state.groups[index].name!}",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GroupsFeed(group: state.groups[index], token: authState.state.authentication!.access_token!, userUuid: authState.state.authentication!.uuid)));
                        },
                        image:
                        "https://api.lorem.space/image/game?w=640&h=480&${DateTime.now().millisecondsSinceEpoch.toString()}",
                      );
                    },
                  ));
          },
        ),
      ),
    );
  }
}
