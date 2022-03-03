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
    <td><a href="/lib/1_navigation/navigation.dart">Navigation</a></td>
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
    <td><a href="/lib/2_state_management/reactive/reactive_state_management.dart">Reactive State Management</a></td>
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
    <td><a href="/lib/2_state_management/simple/simple_state_management.dart">Simple State Management</a></td>
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
  <tr>
    <td>4</td>
    <td><a href="/lib/3_getx_controller/view.dart">Reactive State Controller</a></td>
    <td>
        GetX<Controller>()<br>
        init: Controller(),<br>
        builder: (controller) => Text()<br><br>
        In 'Controller' class:<br>
        final count = 0.obs;<br>
        &nbsp;&nbsp; void increment() {<br>
        &nbsp;&nbsp;&nbsp;&nbsp; count.value++;<br>
        &nbsp;&nbsp; }<br><br>
        &nbsp;&nbsp; void clearCount() {<br>
        &nbsp;&nbsp;&nbsp;&nbsp; count.value = 0;<br>
        &nbsp;&nbsp; }<br><br>
        &nbsp;&nbsp; void onInit() { {<br>
        &nbsp;&nbsp;&nbsp;&nbsp; super.onInit();<br>
        &nbsp;&nbsp;&nbsp;&nbsp; ever(count, (_));<br>
        &nbsp;&nbsp;&nbsp;&nbsp; everAll([count], (_));<br>
        &nbsp;&nbsp;&nbsp;&nbsp; once(count, (_));<br>
        &nbsp;&nbsp;&nbsp;&nbsp; debounce(count, (_));<br>
        &nbsp;&nbsp;&nbsp;&nbsp; interval(count, (_))<br>
        &nbsp;&nbsp; }
    </td>
    <td><img align="right" src="screenshots/reactive_state_controller.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>5</td>
    <td><a href="/lib/3_getx_controller/detail_page.dart">Simple State Controller</a></td>
    <td>
        final controller = Get.put(Controller());<br>
        GetBuilder<Controller>()<br>
        id: 'count1',<br>
        builder: (controller) =>Text()<br><br>
        In 'Controller' class:<br>
        int count = 0;<br>
        &nbsp;&nbsp; void increment() {<br>
        &nbsp;&nbsp;&nbsp;&nbsp; count++;<br>
        &nbsp;&nbsp;&nbsp;&nbsp; update();<br>
        &nbsp;&nbsp; }<br><br>
        &nbsp;&nbsp; void clearCount() {<br>
        &nbsp;&nbsp;&nbsp;&nbsp; count = 0;<br>
        &nbsp;&nbsp;&nbsp;&nbsp; update();<br>
        &nbsp;&nbsp; }<br>
    </td>
    <td><img align="right" src="screenshots/simple_state_controller.gif" height="350"></img></td>
  </tr>
  <tr>
    <td>6</td>
    <td><a href="/lib/1_navigation/navigation.dart">Dependency Management</a></td>
    <td>
        Instancing methods<br>
        &nbsp;&nbsp;Get.put()<br>
        &nbsp;&nbsp;Get.lazyPut()<br>
        &nbsp;&nbsp;Get.putAsync()<br>
        &nbsp;&nbsp;Get.create()<br>
        &nbsp;&nbsp;Get.delete()<br><br>
        Find controller<br>
        &nbsp;&nbsp;final controller = Get.find< Controller>();<br>
        &nbsp;&nbsp;Controller controller = Get.find();<br>
        Alternate controller<br>
        &nbsp;&nbsp;Get.replace()<br>
        &nbsp;&nbsp;Get.lazyReplace()<br><br>
        Binding<br>
        &nbsp;&nbsp;void dependency(){}<br>
        &nbsp;&nbsp;Named route > getPages > BindingBuilder() > void Function<br>
        &nbsp;&nbsp;Named route<br>
        &nbsp;&nbsp;initialBinding<br><br>
        SmartManagement<br>
        &nbsp;&nbsp;✰ full<br>
        &nbsp;&nbsp;onlyBuilder<br>
        &nbsp;&nbsp;keepFactory<br>
    </td>
    <td><img align="right" src="screenshots/dependency_management.gif" height="350"></img></td>
  </tr>

</table>

## Life Cycle of GetX Controller

<img align="center" src="assets/images/getx_controller_lifecycle.png"></img>
<img align="center" src="assets/images/getx_controller_detail_page.png"></img>

## Dependency Management using GetX

<img align="center" src="assets/images/getx_dependency_management.png"></img>
<img align="center" src="assets/images/getx_dependency_management_SmartManagement.png"></img>
