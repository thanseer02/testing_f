// import 'package:flutter/material.dart';
// class effect_ring extends StatefulWidget {
//   const effect_ring({super.key});
//
//   @override
//   State<effect_ring> createState() => _effect_ringState();
// }
//
// class _effect_ringState extends State<effect_ring> {
//   final _filters = [
//     Colors.white,
//     ...List.generate(Colors.primaries.length,
//           (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
//     )
//   ];
//   final _filterColor= ValueNotifier<Color>(Colors.white);
//   void _filterChange(Color value){
//     _filterColor.value=value;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white70,
//       child: Stack(
//         children: [
//           Positioned(
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: _buildphoto())
//         ],
//       ),
//     );
//   }
//   Widget _buildphoto(){
//     return ValueListenableBuilder(
//         valueListenable: _filterColor,
//         builder: (context , color , child)
//     {
//       return Image.network( 'https://docs.flutter.dev/cookbook/img-files'
//           '/effects/instagram-buttons/millennial-dude.jpg',
//         color: color.withOpacity(0.5),
//         colorBlendMode: BlendMode.color,
//         fit: BoxFit.cover,
//       );
//     }
//     );
//   }
//   Widget _buildFilter(){
//     return FilterSelector(
//       onFilterChanged:_filterChange,
//       filters:_filters,
//     );
//   }
// }
// @immutable
// class FilterSelector extends StatefulWidget {
//   const FilterSelector({super.key,
//   required this.filters,
//     required this.onFilterChanged,
//     this.padding=const EdgeInsets.symmetric(vertical: 24)
//   });
//   final List<Color> filters;
//   final void Function(Color selectedColor) onFilterChanged;
//   final EdgeInsets padding;
//
//   @override
//   State<FilterSelector> createState() => _FilterSelectorState();
// }
//
// class _FilterSelectorState extends State<FilterSelector> {
//   static const _filtersPerScreen=5;
//   static const _viewportFractionPerItem=1.0/_filtersPerScreen;
//   late final PageController _controller;
//   late int _page;
//   int get filterCount =>widget.filters.length;
//   Color itemColor(int index)=>widget.filters[index % filterCount];
//
//   @override
//   void initState(){
//     super.initState();
//         _page=0;
//     _controller=PageController(
//       initialPage: _page,
//       viewportFraction: _viewportFractionPerItem
//     );
//     _controller.addListener((_onPageChanged); {})
//   }
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
