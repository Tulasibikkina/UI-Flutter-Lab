import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Form Example",
      home: const UserForm(),
    );
  }
}

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? gender = 'Male';
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Registration Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Name Field
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? "Enter Name" : null,
                  onSaved: (value) => name = value,
                ),
                const SizedBox(height: 16),

                // Email Field
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value!.isEmpty ? "Enter Email" : null,
                  onSaved: (value) => email = value,
                ),
                const SizedBox(height: 16),

                // Password Field
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator:
                      (value) =>
                          value!.length < 6 ? "Minimum 6 characters" : null,
                  onSaved: (value) => password = value,
                ),
                const SizedBox(height: 16),

                // Gender Radio Buttons
                Row(
                  children: [
                    const Text("Gender: "),
                    Radio<String>(
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) => setState(() => gender = value),
                    ),
                    const Text("Male"),
                    Radio<String>(
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) => setState(() => gender = value),
                    ),
                    const Text("Female"),
                  ],
                ),
                const SizedBox(height: 16),

                // Agree Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: agree,
                      onChanged: (value) => setState(() => agree = value!),
                    ),
                    const Text("I agree to the terms and conditions"),
                  ],
                ),
                const SizedBox(height: 16),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && agree) {
                      _formKey.currentState!.save();
                      // Display input
                      showDialog(
                        context: context,
                        builder:
                            (_) => AlertDialog(
                              title: const Text("Form Submitted"),
                              content: Text(
                                "Name: $name\nEmail: $email\nGender: $gender",
                              ),
                            ),
                      );
                    } else if (!agree) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You must agree to the terms"),
                        ),
                      );
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
