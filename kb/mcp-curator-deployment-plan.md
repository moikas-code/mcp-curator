# MCP Curator Deployment Plan

## Project Overview
- **Package Name**: @moikas/mcp-curator
- **Repository**: https://github.com/moikas-code/mcp-curator.git
- **Type**: CLI Tool
- **Current Version**: 0.0.1

## Deployment Strategy

### 1. Version Management
- Use semantic versioning (major.minor.patch)
- Version bumps will be triggered by GitHub releases
- Package.json version will auto-update from release tags

### 2. GitHub Actions Workflow Structure

#### A. Release Workflow (`release.yml`)
Triggers on:
- Push to tags matching `v*` pattern
- Manual release creation

Steps:
1. Build and test the CLI
2. Publish to npm registry
3. Create GitHub release with artifacts

#### B. CI/CD Workflow (`ci.yml`)
Triggers on:
- Push to main branch
- Pull requests

Steps:
1. Run tests
2. Check code quality
3. Build validation

### 3. npm Publishing Configuration

Required Secrets:
- `NPM_TOKEN`: npm automation token

Package Configuration:
- Ensure proper files field in package.json
- Add .npmignore if needed
- Include README and LICENSE

### 4. GitHub Release Configuration

Release Assets:
- Source code (automatic)
- Changelog (auto-generated)
- Optional: platform-specific binaries

### 5. Security Best Practices

- Use GitHub secrets for npm token
- Enable 2FA on npm account
- Use granular permissions in workflows
- Audit dependencies before release

### 6. Pre-deployment Checklist

- [ ] Create npm account/organization
- [ ] Generate npm automation token
- [ ] Add NPM_TOKEN to GitHub secrets
- [ ] Update package.json metadata
- [ ] Add repository field to package.json
- [ ] Create initial GitHub release tag
- [ ] Test workflow locally (act)

### 7. Post-deployment Monitoring

- Monitor npm download statistics
- Track GitHub release adoption
- Set up automated security scanning
- Configure Dependabot for dependencies

## Implementation Steps

1. **Prepare package.json**
   - Add repository field
   - Update description and keywords
   - Add files field for npm package

2. **Create GitHub Actions workflows**
   - `.github/workflows/release.yml`
   - `.github/workflows/ci.yml`

3. **Set up npm publishing**
   - Create npm automation token
   - Add to GitHub secrets

4. **Test deployment pipeline**
   - Create test release
   - Verify npm publication
   - Check GitHub release creation

5. **Document release process**
   - Add CONTRIBUTING.md
   - Update README with badges
   - Create CHANGELOG.md