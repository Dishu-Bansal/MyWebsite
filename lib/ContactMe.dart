import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _messageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header("Contact Me"),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Send me a Message!",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 8, 20, 8),
                        child: TextFormField(
                          controller: _nameController,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            labelText: "Name",
                            //border: OutlineInputBorder(),
                            fillColor: primaryColor,
                            filled: true,
                            labelStyle: const TextStyle(color: Colors.black45),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Name cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 100, 8),
                        child: TextFormField(
                          controller: _emailController,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            labelText: "Email",
                            //border: OutlineInputBorder(),
                            fillColor: primaryColor,
                            filled: true,
                            labelStyle: const TextStyle(color: Colors.black45),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
                    child: TextFormField(
                      controller: _messageController,
                      cursorColor: Colors.black45,
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                        label: Text(
                          "Message",
                        ),
                        //border: OutlineInputBorder(),
                        fillColor: primaryColor,
                        filled: true,
                        labelStyle: const TextStyle(
                          color: Colors.black45,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Country cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    color: secondaryColor,
                  ),
                )
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
