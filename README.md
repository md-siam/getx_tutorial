# GteX Tutorial - [Udemy](https://www.udemy.com/course/2022-dart-flutter-master-class-zero-to-hero/)

<img align="right" src="assets/playstore.png" height="190"></img>
GetX is one of the most popular state management solution in flutter.
In addition to state management, GetX provides easy way to manage page routes.

## YouTube

Video on [YouTube](https://www.youtube.com/watch?v=vIIBp6xJJeA)

## Table of Contents

<table align="center" style="margin: 0px auto;">
  <tr>
    <th>No.</th>
    <th>Name</th>
    <th>Contents</th>
    <th>Screenshots</th>
  </tr>
  <tr>
    <td>1</td>
    <td><a href="/lib/navigation/navigation.dart">Navigation</a></td>
    <td>
        Get.to()<br>
        Get.back()<br>
        Get.off()<br>
        Get.ofAll()<br>
        Get.toNamed()<br>
        Get.offNamed()<br>
        Get.offAllNamed()
    </td>
    <td><img align="right" src="screenshots/navigation.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>2</td>
    <td><a href="/lib/state_management/reactive/reactive_state_management.dart">Reactive State Management</a></td>
    <td>
        final name = ''.obs;<br>
        final isLogged = false.obs;<br>
        final count = 0.obs;<br>
        final balance = 0.0.obs;<br>
        final number = 0.obs;<br>
        final items = <String>[].obs;<br>
        final myMap = <String, int>{}.obs;<br><br>
        Obx(() =>Text('${count.value}'));<br><br>
        onPressed: () => increment()  
    </td>
    <td><img align="right" src="screenshots/reactive_state_management.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>3</td>
    <td><a href="/lib/state_management/simple/simple_state_management.dart">Simple State Management</a></td>
    <td>
        class Controller extends GetxController {}<br>
        static Controller get to => Get.find();<br>
        update();<br><br>
        GetBuilder<Controller>()<br>
        init: Controller(),<br>
        builder: (controller) => Text('${controller.counter}')
    </td>
    <td><img align="right" src="screenshots/simple_state_management.gif" height="350"></img></td>
  </tr>
</table>
