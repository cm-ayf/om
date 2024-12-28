// @ts-check

import eslint from "@eslint/js";
import eslintConfigPrettier from "eslint-config-prettier";
import eslintPluginImportX from "eslint-plugin-import-x";
import globals from "globals";
import tseslint from "typescript-eslint";

export default tseslint.config(
  eslint.configs.recommended,
  ...tseslint.configs.recommendedTypeChecked,
  {
    plugins: {
      "import-x": eslintPluginImportX,
    },
    languageOptions: {
      parserOptions: {
        sourceType: "module",
        ecmaVersion: "latest",
        projectService: true,
      },
      globals: {
        ...globals.node,
      },
    },
    rules: {
      "import-x/order": [
        "error",
        {
          alphabetize: { order: "asc" },
          "newlines-between": "never",
        },
      ],
      "@typescript-eslint/restrict-template-expressions": "off",
      "@typescript-eslint/no-base-to-string": "off",
      "@typescript-eslint/no-unused-vars": [
        "error",
        {
          varsIgnorePattern: "^_",
          argsIgnorePattern: "^_",
        },
      ],
      "@typescript-eslint/no-misused-promises": [
        "error",
        {
          checksVoidReturn: { arguments: false },
        },
      ],
    },
  },
  { ignores: ["dist/", "out-tsc/", ".husky/install.mjs"] },
  eslintConfigPrettier,
);
