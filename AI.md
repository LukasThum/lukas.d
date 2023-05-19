I see, you're looking for a structured yet readable format that includes both chat and code blocks. Here's how you could structure it, using Markdown:

```markdown
# Chat with GPT-4

## Topic 1: Running a Bash Command

I want you to explain how to use this command:

```bash
ls -a lalala
```

**Assistant**:
Sure, here's how:

```bash
ls -a lalala
```
This command lists all files and directories, including hidden ones (those starting with `.`), in the `lalala` directory.

---

## Topic 2: Another Question

Here's some other question.

**Assistant**:
Here's the answer to your other question.

---

<!-- New Prompt Goes Here -->

In this format:

- Each conversation or topic is a level 2 heading (##). This could correspond to different interactions with the assistant.
- User input is plain text. If it's a code or command, it's enclosed in triple backticks (```), with the language specified.
- The assistant's responses are denoted with `**Assistant**:` and the text or code block follows.
- Each separate interaction is divided by a horizontal line (`---`).

For a new prompt, simply add a new level 2 heading and continue the structure. You can use a placeholder (like `<!-- New Prompt Goes Here -->`) as a guide for where to add new content.

You could then automate the process of sending the new user prompts to GPT-4 and appending the assistant's responses to the document. Just be aware that you would need to handle the parsing of the Markdown document and the interaction with the GPT API in your script.
