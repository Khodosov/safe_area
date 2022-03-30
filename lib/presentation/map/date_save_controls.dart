import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/data_saver/data_saver_bloc.dart';
import 'package:safe_area/generated/locale_keys.g.dart';
import 'package:safe_area/presentation/widgets/control_button.dart';

class DataSaveControls extends StatelessWidget {
  const DataSaveControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataSaverBloc, DataSaverState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Text('${LocaleKeys.sqflite_sp_list_length.tr()} ${state.locationHiveList.length}'),
                        ),
                      );
                    },
                  );
                },
                child: Text('SQFLite & SP ${state.locationList.length}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Text('${LocaleKeys.hive_list_length.tr()} ${state.locationHiveList.length}'),
                        ),
                      );
                    },
                  );
                },
                child: Text('Hive ${state.locationHiveList.length}'),
              ),
              const SizedBox(
                height: 20,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.saveToDiscHive(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.save_outlined),
                    Text(' Hive'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.saveToDiscSQFLite(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.save_outlined),
                    Text(' SQFLite'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.saveToDiscSharedPreferences(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.save_outlined),
                    Text(' SP'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.readFromDiscHive(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.upload_file_outlined),
                    Text(' Hive'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.readFromDiscSQFLite(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.upload_file_outlined),
                    Text(' SQFLite'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.readFromDiskSharedPreferences(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.upload_file_outlined),
                    Text(' SP'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.updateHive(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.update_outlined),
                    Text(' Hive'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.updateSQFLite(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.update_outlined),
                    Text(' SQFLite'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(
                    const DataSaverEvent.updateSharedPreferences(),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.update_outlined),
                    Text(' SP'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ControlButton(
                positionType: PositionType.solo,
                onTap: () {
                  BlocProvider.of<DataSaverBloc>(context).add(const DataSaverEvent.generateData());
                },
                child: const Icon(Icons.add_location_alt_outlined),
              ),
            ],
          ),
        );
      },
    );
  }
}
