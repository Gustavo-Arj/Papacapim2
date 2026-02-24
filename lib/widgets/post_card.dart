import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String usuario;
  final String texto;

  const PostCard({super.key, required this.usuario, required this.texto});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool curtido = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('@${widget.usuario}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(widget.texto),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    curtido ? Icons.favorite : Icons.favorite_border,
                    color: curtido ? Colors.red : null,
                  ),
                  onPressed: () {
                    setState(() {
                      curtido = !curtido;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}