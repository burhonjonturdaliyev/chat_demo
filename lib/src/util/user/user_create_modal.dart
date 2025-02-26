import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class UserCreateModal extends StatelessWidget {
  const UserCreateModal({super.key});

  @override
  Widget build(BuildContext context) {
    final firstName = TextEditingController();
    final lastName = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(16),
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ConstValues.createNewChat,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          TextFormField(
            controller: firstName,
            decoration: InputDecoration(
              label: Text(ConstValues.firstname),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: lastName,
            decoration: InputDecoration(
              label: Text(ConstValues.lastname),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.read<ChatBloc>().add(ChatCreateEvent(
                        firstname: firstName.text.trim(),
                        lastname: lastName.text.trim()));
                  },
                  child: Text(ConstValues.add)))
        ],
      ),
    );
  }
}
