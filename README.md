# How to use it?

1.  [Create an access token on
    Github](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
    and set it to a `GITHUB_TOKEN` environment variable
2.  Set your `USERNAME` on the script
3.  [Optional] alias the script to whatever command you'd easily remember, mine is `quickrepo` :-)
4.  [Optional] choose if the repositories should be private or public. Default is `public`.

# How it works?

```
- Is the current directory a git repository?

  - yes

    - Show the detailed status of the repository
    - Is it okay to push everything in it?
    - What should be the name of the repository? Default is the current directory name.
    - Push to Github
    - Was the request OK?

      - yes

        - Open the created directory on the browser

      - no

        - Print the HTTP status code.

  - no

    - Create a new repository
    - Show the detailed status of the repository
    - Is it okay to push everything in it?
    - What should be the name of the repository? Default is the current directory name.
    - Push to Github
    - Was the request OK?

      - yes

        - Open the created directory on the browser

      - no

        - Print the HTTP status code.
```
