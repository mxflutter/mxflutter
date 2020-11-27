module.exports = {
  root: true,
  extends: ['@tencent/eslint-config-tencent', '@tencent/eslint-config-tencent/ts', 'plugin:prettier/recommended'],
  overrides: [
    {
      files: ['**/test/**/*.ts'],
      env: {
        jest: true,
      },
    },
  ],
  globals: {
    globalThis: false,
  },
  rules: {
    'import/prefer-default-export': 'off',
    'no-useless-constructor': 'off',
    '@typescript-eslint/no-useless-constructor': 'error',
    'no-param-reassign': 0,
    'prettier/prettier': [
      'error',
      {
        printWidth: 120,
        tabWidth: 2,
        useTabs: false,
        semi: true,
        singleQuote: true,
        bracketSpacing: true,
        arrowParens: 'always',
      },
    ],
  },
};
