# Contributing to DrosophiliaDeconv

Thank you for your interest in contributing to **DrosophiliaDeconv**!
We welcome contributions of all kinds, including bug fixes, new features,
documentation improvements, and more.

## General development

1. [`DrosophiliaDeconv`](https://github.com/bastienchassagnol/DrosophiliaDeconv) is used to reproduce the results for the Bioinformatics paper and
generate the reference profiles for Drosophila organisms from both bulk and single-cell RNA fingerprints.
2. Fork [`immunedeconv`](https://github.com/omnideconv/immunedeconv) to adjust any deconvolution algorithm using bulk profiles (first generation) to Drosophila samples.
3. Fork [`omnideconv`](https://github.com/omnideconv/omnideconv) to adjust any deconvolution algorithm using scRNASeq profiles (second generation) to Drosophila samples.
4. (Not planned for now) Fork [`spaceDeconv`](https://github.com/omnideconv/spacedeconv) to adjust any spatial deconvolution algorithm to Drosophila samples.

### Publication to Bioinformatics advances

1. Read first [General instructions for authors](https://academic.oup.com/pages/authoring/journals/preparing_your_manuscript), 
followed by [Instructions to Authors](https://academic.oup.com/bioinformaticsadvances/pages/instructions-to-authors).
2. [Submission form](https://mc.manuscriptcentral.com/bioadv)
3. [General template is stored in article folder](./article)

## How to Contribute

### 1. Reporting Issues
If you encounter a bug, have a question, or want to request a new feature:
- Search the [issues](https://github.com/bastienchassagnol/DrosophiliaDeconv/issues) to see if it has already been reported or discussed.
- If not, create a [new issue](https://github.com/bastienchassagnol/DrosophiliaDeconv/issues/new). Please include:
  - A clear and descriptive title.
  - A detailed description of the issue or request.
  - Steps to reproduce the bug (if applicable).
  - Screenshots or logs (if available).

### 2. Fork the Repository
- Fork the repository by clicking the **Fork** button on the top right of the project page.
- Clone your fork to your local machine:

```bash
git clone https://github.com/bastienchassagnol/DrosophiliaDeconv.git
cd DrosophiliaDeconv
git remote add upstream https://github.com/bastienchassagnol/DrosophiliaDeconv.git
```

### 3. Create a New Branch
Before making changes, create a new branch to keep your work organized:
```bash
git checkout -b <feature-or-fix>/<feature-or-fix-name>
```

### 4. Make Your Changes
- Follow the project's coding standards and conventions.
- Ensure your changes do not break existing functionality.
- Write or update tests for your changes if applicable.

### 5. Commit Your Changes
- Write clear and concise commit messages. For example:
```
Add feature to export data in CSV format
Fix typo in README.md
```

- Commit your changes:
```bash
git add .
git commit -m "Your descriptive commit message"
```

### 6. Sync with the main repo, then Push Your Changes

Keep Your Fork in Sync(also possible from Github web interface)

```bash
# Fetch and merge changes from the original repository
git fetch upstream
git merge upstream/main
```

Then, push your branch to your forked repository:

```bash
git push origin feature-or-fix-name
```

### 7. Open a Pull Request
- Navigate to the original repository and click on the **Pull Requests** tab.
- Click **New Pull Request**, then choose your branch.
- Provide a clear description of your changes and link to the relevant issue.

### 8. Code Review
- Your pull request will be reviewed by maintainers or contributors.
- Address any feedback or requested changes before the pull request is merged.

### **9. Clean Up After the Merge**

Once your pull request has been validated and merged, you can delete your branch and keep your fork updated.

```bash
# Delete the local branch
git branch -d feature/your-feature-name
```


## Resources
- **Documentation**: [Link to documentation](https://github.com/bastienchassagnol/DrosophiliaDeconv/docs)
- **Discussions**: [GitHub Discussions](https://github.com/bastienchassagnol/DrosophiliaDeconv/discussions)

### Useful links

- [Cluster IFB account](https://my.cluster.france-bioinformatique.fr/manager2/project)
- [IFB tutorial](https://ifb-elixirfr.gitlab.io/cluster/doc/)
- [Single cell tutorials from sincellTE school](https://ondemand.sb-roscoff.fr/pun/sys/dashboard/files/fs//shared/projects/sincellte2024)
- [OnDemand localisation](https://ondemand.cluster.france-bioinformatique.fr/pun/sys/dashboard/files/fs//shared/projects/drosophiladeconv)
- [Project Savandara Bess](https://docs.google.com/document/d/1RzaOg_u7xfZ7x_tv7bpXMwbm8Se4qCkcu4NbPQV5hrc/edit?tab=t.0)
- [omnideconv vignette](https://omnideconv.org/omnideconv/articles/omnideconv_example.html)
- [Improve GSEA marker-based approaches using Cramer-von Mises CDFs](https://www.linkedin.com/posts/adrianolszewski_statistics-datascience-activity-7256312446737387520-J8zk?utm_source=share&utm_medium=member_desktop)


Thank you for contributing to **DrosophiliaDeconv** and making it better!



