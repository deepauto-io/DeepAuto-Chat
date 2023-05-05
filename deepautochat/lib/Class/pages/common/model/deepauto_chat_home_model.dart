class DeepautoChatHomeModel {
  final String title;
  final String message;
  DeepautoChatHomeModel({
    required this.title,
    required this.message,
  });
  static var getLists = [
    DeepautoChatHomeModel(
        title: "Cluster Security",
        message:
            "Etcdwp provides the security configuration functions of the etcd cluster, including TLS encryption, access control."),
    DeepautoChatHomeModel(
        title: "Cluster Monitor",
        message:
            "Etcdwp displays the health, node status, and storage usage of the etcd cluster in real time, including CPU usage, memory usage, and disk usage."),
    DeepautoChatHomeModel(
        title: "Key-value Management",
        message:
            "Etcdwp allows users to add, edit, and delete key-value pairs in etcd. Users can also add or remove key-value pairs in bulk through import and export."),
    DeepautoChatHomeModel(
        title: "High Performance",
        message:
            "Etcdwp is designed to work with millions of keys and fields without blocking databases. It works great with your production database."),
    DeepautoChatHomeModel(
        title: "Alert Mode",
        message:
            "Every writable command in alert mode sent to servers will need your approval explicitly. This prevent you from destroying production databases accidentally."),
    DeepautoChatHomeModel(
        title: "Data Encoders",
        message:
            "Etcdwp recognizes different data formats automatically so don't worry if you are using MessagePack for reducing memory usages."),
    DeepautoChatHomeModel(
        title: "History Queries",
        message:
            "Etcdwp provides the history query function of etcd, which can query different versions of a key value in history, compare and roll back."),
    DeepautoChatHomeModel(
        title: "Dark Mode", message: "Of course, Etcdwp supports dark mode!")
  ];
}
